---
layout: single
author_profile: true
title: "Publicaciones"
permalink: /es/posts/
lang: es
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
