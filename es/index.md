---
layout: single
author_profile: true
title: "Arquitectura de Software | Construyendo soluciones de detección de fraude | Entusiasta de Ciberseguridad"
permalink: /es/
classes: wide
lang: es
---

{% assign t = site.data.i18n[page.lang] %}

_{{ t.content.always_learning }}_

<div class="posts-by-language">
  <h2>{{ t.content.recent_posts }}</h2>
  {% assign spanish_posts = site.posts | where: "lang", "es" %}
  {% if spanish_posts.size > 0 %}
    <div class="entries-list">
      {% for post in spanish_posts limit: 5 %}
        {% include archive-single.html %}
      {% endfor %}
    </div>
  {% else %}
    <p>{{ t.content.no_posts }}</p>
  {% endif %}
  
  {% if spanish_posts.size > 5 %}
    <div class="text-center">
      <a href="/es/posts/" class="btn btn--primary">{{ t.content.view_all_posts }}</a>
    </div>
  {% endif %}
</div>