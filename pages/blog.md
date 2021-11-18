---
permalink: /blog
layout: single
---

# Docencia

{% include category-list.html %}


{% assign row = site.posts.categories["blog"] %}
{% for p in row %}
  {{ p | inspect }}
{% endfor %}

{% for post in site.categories["blog"] %}
* <a href="{{ site.baseurl }}{{ post.url }}">{{post.title}}</a>
{% endfor %}