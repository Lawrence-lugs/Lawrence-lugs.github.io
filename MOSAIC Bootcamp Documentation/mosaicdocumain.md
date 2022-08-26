---
title: "The Ultimate MOSAIC Bootcamp 2022 Documentation"
layout: post
date: '2022-08-24 10:00:00 +0200'
categories:
- learningnotes
---

MOSAIC stands for Modular Open Source Analog IC Design. The MOSAIC bootcamp had a goal to connect all independent parties working on automated analog design frameworks and workflows to "touch base"- share ideas and developments. 

Seven student participants, us two from the University of the Philippines, two from Unibersidad Federico Santa Maria in Chile, and three from Hanyang University in South Korea, came to Austria on the invitation of Dr. Mirjana Videnovic-Misic to participate in the bootcamp. We were introduced to programmatic analog IC design and layout in the hopes of spreading the use of the paradigm in other organizations.
<div style="text-align:center">
<h1> <a href="https://www.youtube.com/playlist?list=PLXTGiaUILPlX6tQz377Hqm6DnZw2G7RzS"><img src="\images\2022-08-25-09-59-17.png" style="width:25%;height:25%"></a>
</h1>
</div>

## Schedule

# Talks
<div class="wrapper">
    <div style="float:right;wid">
    <iframe width="100%" height="100%" src="https://www.youtube.com/embed/IzJbVG-FHJc" title="Anagen Motivation | Christoph Sandner | MOSAIC" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
    </div>
    <div style="vertical-align:center;padding-top:10%;padding-bottom:10%">
    The bootcamp kicked off with a talk from Christoph Sandner discussing Infineon's motivation for automated analog generation, which they called <b>anagen</b>.
    </div>
</div>
<div class="wrapper">
    <div style="float:right">
    <iframe width="368" height="207" src="https://www.youtube.com/embed/IzJbVG-FHJc" title="Anagen Motivation | Christoph Sandner | MOSAIC" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
    </div>
    <div style="vertical-align:center;padding-top:10%;padding-bottom:10%;padding:5%">
    The bootcamp kicked off with a talk from Christoph Sandner discussing Infineon's motivation for automated analog generation, which they called <b>anagen</b>.
    </div>
</div>

# Activities

<div class="wrapper" style="overflow:scroll;height:300px">
    <div class="home">    
        <ul class="post-list">
            <ul>
                {% for page in site.pages %}
                    {% if page.title != "About" %}
                        <span class="post-meta">{{ page.date | date: "%-d %B %Y" }}
                        <a class="post-link" href="{{ page.url }}">{{ page.title }}</a></span>
                        <p>{{ page.excerpt }}</p>
                    {% endif %}
                {% endfor %}
            </ul>      
        </ul>
    </div>
</div>

# Participants

* Boosting the ease of use of these documentation-lacking frameworks.
* Inspired people.
* For CIDR
* Cooperation outside the bubble for IC3E
* Discovering that people want to learn about LAYGO2
* Different POVs from people with different backgrounds (Digital, Software, Analog only, Layout generation people.)
* Kinda like a proto-conference on layout generation, for which everyone has different amounts of progress and different approaches and different software. It's a way to remap in the heads of everyone who wants to work on these things.
* The mosaic orchestrator
  * Troubles with definition of PDK views
  * Need both approaches to work in the same kind of environment, instead of mosaic-laygo2-magic and mosaic-analogbase-virtuoso
