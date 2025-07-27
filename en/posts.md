---
layout: single
author_profile: true
title: "Posts"
permalink: /en/posts/
lang: en
---

{% assign t = site.data.i18n[page.lang] %}

{% assign english_posts = site.posts | where: "lang", "en" %}
{% if english_posts.size > 0 %}
  <div class="entries-list">
    {% for post in english_posts %}
      {% include archive-single.html %}
    {% endfor %}
  </div>
{% else %}
  <p>{{ t.content.no_posts }}</p>
{% endif %} 