---
permalink: pages/docencia
---

# Docencia

{% include category-list.html %}


{% assign row = site.posts.categories["docencia"] %}
{% for p in row %}
  {{ p | inspect }}
{% endfor %}

{% for post in site.categories["docencia"] %}
* <a href="{{ site.baseurl }}{{ post.url }}">{{post.title}}</a>
{% endfor %}