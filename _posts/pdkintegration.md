# PDK Integration from Amir Rashid

cds-ff-mpt in BAG2, workspace setup change to PDK symbolic link.

change the worspace_setup bag_config change to tech_lib = library name exclude libraries and config_libs.

## To change in templates_cds_ff_mpt > data > tech_params.yaml:

1. Change PDK resolution, will find in PDK.
2. Change tech_lib name to pdk library name.
3. Change the layer tables.
   1. If the layer ddoesn't exist, just put as dummy layer.
   2. Change layer_types to ones specific to PDK
   3. You can map the group parameters, like via 1x and you can find those in your PDK. The numbers in tech_params are multiples of the resolution you give in.
4. Change the minimum wire spacing rules. 
5. Change minimum length and area rules
6. Change md_w, md_od_exty, md_spy, md_h_min.
7. Change the gate via parameters, drain wire widths, gate wire widths, directions, drain/source via parameters.
8. If your pdk doesn't have a finArea, you can just change it to dummy. Change also nwell to your pdk's name for nwell.
9. Change also od_spx and od_spy.

## Debugging strategy

1. Look at the layers, find corresponding layer+layertype in your PDK.
   1. Active maybe diffusion or OD
   2. The tool will usually not properly, if LiPo cannot be found, change it to dummy.
2. VIA and Minimum length/area rules are the problem.
3. CDS FF MPT has 4 via categories.
4. Starts with layers
5. then minimum area and length
6. and vias.
