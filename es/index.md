---
layout: single
author_profile: true
title: "Arquitectura de Software | Construyendo soluciones de detección de fraude | Entusiasta de Ciberseguridad"
permalink: /es/
classes: wide
lang: es
author:
  name: "Elio Rincón"
  avatar: "https://gravatar.com/avatar/7407976f3a4cab233e085bf055d4d96f?s=400&d=robohash&r=x"
  bio: "Lead Engineer apasionado por construir y arquitecturar soluciones de software escalables. Profundamente interesado en ciberseguridad, infraestructura robusta Linux/FreeBSD, y tecnología Bitcoin."
  location: "Bogotá, Colombia"
  links:
    - label: "GitHub"
      icon: "fab fa-fw fa-github"
      url: "https://github.com/3l1070r"
    - label: "LinkedIn"
      icon: "fab fa-fw fa-linkedin"
      url: "https://www.linkedin.com/in/3l1070r/"
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