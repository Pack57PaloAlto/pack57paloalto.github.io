{% comment %}
Leaders partial - a reusable component for displaying pack leaders
Parameters:
- none: uses default styling and layout
{% endcomment %}

## Meet the Leaders

Caring, trained volunteers who make the adventure happen.

<div class="grid gap-6 mt-6 sm:grid-cols-2" markdown="0">

{% for leader in site.data.leaders %}
  {% include leader-card.html leader=leader %}
{% endfor %}

</div>
