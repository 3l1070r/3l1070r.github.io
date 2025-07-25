---
layout: default
title: Home
---

# Software Architecture & Security

Staff Engineer passionate about building scalable systems and exploring security technologies.

## Recent Posts

<ul>
  {% for post in site.posts limit:5 %}
    <li><a href="{{ post.url }}">{{ post.title }}</a> - {{ post.date | date: "%B %d, %Y" }}</li>
  {% endfor %}
</ul>
