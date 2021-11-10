---
title: Calificaciones
category: pages
---

{% assign row = site.data.calificaciones[0] %}
{% for pair in row %}
  {{ pair | inspect }}
{% endfor %}


<table>
  {% for row in site.data.calificaciones %}
    {% if forloop.first %}
    <tr>
      {% for pair in row %}
        <th>{{ pair[0] }}</th>
      {% endfor %}
    </tr>
    {% endif %}

    {% tablerow pair in row %}
      {{ pair[1] }}
    {% endtablerow %}
    
  {% endfor %}
</table>