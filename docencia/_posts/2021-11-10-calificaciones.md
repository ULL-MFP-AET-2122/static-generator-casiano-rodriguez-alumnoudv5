---
title: Calificaciones de AET
category: pages
---

## Inspeccionando variables

{% raw %}
```liquid
{% assign row = site.data.calificaciones[0] %}
{% for pair in row %}
  {{ pair | inspect }}
{% endfor %}
```
{% endraw %}

{% assign row = site.data.calificaciones %}
  {{ row | inspect }}
{% for row in site.data.calificaciones %}
    {% for pair in row %}
      {{ pair[0] }}: {{ pair[1]}}
    {% endfor %}
{% endfor %}

## Tabla


{% raw %}
```
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
```
{% endraw %}

<table>
  {% for row in site.data.calificaciones %}
    {% if forloop.first %}
    <tr>
      {% for p in row %}
        <th>{{ p[0] }}</th>
      {% endfor %}
    </tr>
    {% endif %}

    {% tablerow p in row %}
      {{ p[1] }}
    {% endtablerow %}
    
  {% endfor %}
</table>
