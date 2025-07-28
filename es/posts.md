---
layout: single
author_profile: true
title: "Publicaciones"
permalink: /es/posts/
lang: es
author:
  name: "Elio Rincón"
  avatar: "https://gravatar.com/avatar/7407976f3a4cab233e085bf055d4d96f?s=400&d=robohash&r=x"
  bio: "Líder de Ingeniería apasionado por construir y diseñar soluciones de software escalables. Profundamente interesado en ciberseguridad, infraestructura robusta Linux/FreeBSD, y tecnología Bitcoin."
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

{% assign spanish_posts = site.posts | where: "lang", "es" %}
{% if spanish_posts.size > 0 %}
  <div class="entries-list">
    {% for post in spanish_posts %}
      {% include archive-single.html %}
    {% endfor %}
  </div>
{% else %}
  <p>{{ t.content.no_posts }}</p>
{% endif %}
