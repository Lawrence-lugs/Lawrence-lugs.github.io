---
title: Writing your first AnalogBase virtuoso-template generator - Regulated Cascode
layout: post
date: '2022-08-23 13:10:00 +0200'
categories:
- learningnotes
---

First, you need to be in the SDF environment (to be updated- must work outside the bootcamp environment.) This tutorial is done with the additional classes created by Martin.

## Viewing an existing generator

1. Start virtuoso

    ```
    $ virtuoso &
    ```

2. Import the existing generator code (if not locally available yet)

    ```
    $ gen add <generatorname>_gen
    ```

3. Refresh Virtuoso library (In Library Manager: View > Refresh)
4. Run the generator (refresh Virtuoso if it asks you again)

    ```
    $ gen make <generatorname>_gen
    ```

5. You should now see **[generatorname]_generated** as a library in Virtuoso. Inside it, you will see the generated layout. If you check the terminal, you will see an LVS check at the output. This LVS check is comparing **[generatorname]_generator/layout** to **[generatorname]_templates/schematic**. *Later, when you make your own generator, you need to edit this schematic to match your layout.*

## Creating new templates

1. Create a new generator (by convention, always end with "_gen")

    ```
    $ gen new regulated_cascode_gen
    ```

    This will create a new folder with your generatorname. For this example, I'll be making a generator of the regulated cascode from the Fifty Nifty two-transistor circuits.

    |![](\images\2022-08-23-14-03-39.png)|
    |:-:|
    |Regulated Cascode|

2. Manually edit the generator source files: As of right now, a new generator is made by cloning a transmission gate layout and schematic. Thus, find-and-replace all instances of "tgate" in all 4 sources (design.py, layout.py, params.py, schematic.py) with your generator's name.

    ```
    Find: tgate (case insensitive)
    Replace: regulated_cascode

    For all 4 py files.
    ```

3. Edit the template schematic and symbol: Go to regulated_cascode_templates/schematic. Edit it into the schematic of choice.
   
    Important note: Use transistors inside BAG_Prim library, not the native transistors of your PDK.

    |![](\images\2022-08-23-14-37-24.png)|![](\images\2022-08-23-15-11-42.png)|
    |:-:|:-:|
    |Initial|After Edit|

4. Edit the symbol to your symbol of choice (make sure it corresponds to the schematic.)

    |![](\images\2022-08-23-15-12-50.png)|
    |:-:|
    |New Symbol|

## Coding the layout

The layout.py contents will be structured as follows:

```
import ...

class layout(AnalogBase):
    def __init__(self, temp_db, lib_name, params, used_names, **kwargs):...

    @classmethod
    def get_params_info(cls):...

    @classmethod
    def get_default_param_values(cls):...

    @property
    def sch_params(self):...

    def draw_layout(self):...
        # YOU ARE ONLY CONCERNED ABOUT WHAT GOES IN HERE

class regulated_cascode(layout):...
```

but the only thing you actually will edit is the draw_layout method.

The first three things you see is

```
params: regulated_cascodeParams = self.params['params']

vert_conn_layer = self.mos_conn_layer + 2

tr_manager = TrackManager(self.grid, params.tr_widths, params.tr_spaces)
```

You can go ahead without changing any of these, but it is probably good to note that changing vert_conn_layer in case you want to use more metal layers in case of more complex routing.

### Drawing the base

To make transistors, we must first draw the base by calling draw_base. For upper hierarchy, where you instantiate subcells of generators, draw_base is not called (this is maybe for another tutorial).

**The first important thing is to setup the row information for draw_base**

You make **Row** objects, and then make a list of them. Their order on the row_list is from bottom to top in the layout, so that's important.

![](\images\2022-08-23-15-26-07.png)

```
# EXAMPLE ROW DEFINITION
row_dummy_NB =  Row(name='Dummy_NB',
                    orientation=RowOrientation.R0,
                    channel_type=ChannelType.N,
                    width=params.w_dict['Dummy_NB'],
                    threshold=params.th_dict['Dummy_NB'],
                    wire_names_g=['sig1','EN'],
                    wire_names_ds=['I']
                    )
```

A few things to break down here:
1. **row.name** is not particularly important unless you want to obtain the row by name later
2. **orientation** has two options, R0 or MX. This decides where the gate goes relative to the drain and source contacts:

    ![](\images\2022-08-23-15-35-22.png)

3. **channel_type** is the type of the channel: either N or P.
4. **width** is the vertical width of a row in the image above. 
    This also decides the transistor widths. (hence transistors of the same row get the same width.)
5. **threshold** is standard in the default parameters, but can take the string values 'hvt','standard','lvt'.
6. **wire_names** is used for get_wire_id later on to grab the M1/M2 wires of the gate, drain or source of a transistor, so just remember what name you used. 
   
   Order matters here, for when you instantiate multiple transistors in the same row, but for this circuit it doesn't.

For example, this is how I defined my rows.




