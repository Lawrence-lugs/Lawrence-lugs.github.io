---
layout: page
folder_list: 
- 'Notes, Blog'
- 'EEE1051s2223'
---

![](/images/a_2.jpg)

Hello! I am an aspiring neuromorphic engineer, master's student at UP Diliman Microprocessors Lab since August 2021.

My primary research interest is in the creation of brainlike systems in software and hardware for the advancement of both engineering (*low power computation on the edge, brain-computer interfaces*) and cognitive sciences (*feasible models for computational neuroscience*). This involves using mixed-signal design principles for electronic hardware for analog computing hardware to imitate neural circuits and knowledge of neurally-plausible machine learning algorithms to simulate synaptic learning.

### Directories

{% for folder in page.folder_list %} 
#### {{folder}}
{% assign page_list = site.pages | where_exp: "item" , "item.path contains folder" %}
{% assign groupmain = page_list | where_exp: "item" , "item.name contains 'groupmain'" %}
{% for item in page_list %}
<a href="{{item.dir}}">{{item.title}}</a>
{% endfor %}
{% endfor %}
