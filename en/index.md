---
layout: single
author_profile: true
title: "Software Architecture | Building fraud detection solutions | Cybersecurity Enthusiast"
permalink: /
classes: wide
lang: en
---

{% assign t = site.data.i18n[page.lang] %}

_{{ t.content.always_learning }}_

<div class="posts-by-language">
  <h2>{{ t.content.recent_posts }}</h2>
  {% assign english_posts = site.posts | where: "lang", "en" %}
  {% if english_posts.size > 0 %}
    <div class="entries-list">
      {% for post in english_posts limit: 5 %}
        {% include archive-single.html %}
      {% endfor %}
    </div>
  {% else %}
    <p>{{ t.content.no_posts }}</p>
  {% endif %}
  
  {% if english_posts.size > 5 %}
    <div class="text-center">
      <a href="/en/posts/" class="btn btn--primary">{{ t.content.view_all_posts }}</a>
    </div>
  {% endif %}
</div>