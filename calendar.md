---
layout: default
title: Pack 57 Calendar
permalink: /calendar/
navbarText: Palo Alto, CA
---


<!-- Collect events -->
{% assign now_epoch = site.time | date: "%s" %}
{% assign upcoming = '' | split: '' %}
{% assign past = '' | split: '' %}

{% for p in site.pages %}
  {% if p.url and p.event and p.url contains '/events/' %}
    {% assign start_iso = p.event.start.dateTime | default: p.event.start.date %}
    {% if start_iso %}
      {% assign start_epoch = start_iso | date: "%s" %}
      {% if start_epoch >= now_epoch %}
        {% assign upcoming = upcoming | push: p %}
      {% else %}
        {% assign past = past | push: p %}
      {% endif %}
    {% endif %}
  {% endif %}
{% endfor %}

{% assign upcoming = upcoming | sort: 'event.start.dateTime' %}
{% assign past = past | sort: 'event.start.dateTime' | reverse %}

<!-- Upcoming -->
<section class="mx-auto max-w-6xl px-4 py-10">
<h2 class="text-2xl md:text-3xl font-extrabold tracking-wide uppercase text-cub-blue">Upcoming Events</h2>
{% if upcoming.size == 0 %}
    <p class="mt-4 text-slate-600">No upcoming events found.</p>
{% else %}
    <div class="mt-6 divide-y divide-slate-200 rounded-2xl ring-1 ring-slate-200 bg-white">
  {% for p in upcoming %}
    {% assign ev = p.event %}
    <article class="p-4 md:p-5 grid md:grid-cols-5 gap-3">
      <p class="text-sm text-slate-500 md:col-span-1">
        {{ ev.start.dateTime | default: ev.start.date | date: "%b %-d, %Y" }}
      </p>
      <div class="md:col-span-3">
        <a href="{{ p.url | relative_url }}" class="font-semibold hover:underline">
          {{ ev.summary | default: p.title }}
        </a>
        {% if ev.location %}
          {% if p.layout contains "public" %}
            <p class="text-sm text-slate-600 mt-0.5">{{ ev.location }}</p>
          {% else %}
            <p class="text-sm text-slate-600 mt-0.5">Location available in members calendar</p>
          {% endif %}
        {% endif %}
      </div>
      <div class="md:col-span-1 flex items-start md:justify-end">
          <a href="{{ p.url }}" target="_blank" rel="noopener"
             class="inline-flex items-center rounded-lg px-3 py-1.5 text-sm font-medium
                    ring-1 ring-slate-300 hover:bg-slate-50">
            View
          </a>
      </div>
    </article>
  {% endfor %}
</div>
{% endif %}
</section>

<!-- Past -->
<section class="mx-auto max-w-6xl px-4 pb-16">
<h2 class="text-2xl md:text-3xl font-extrabold tracking-wide uppercase text-slate-800">Past Events</h2>
{% if past.size == 0 %}
    <p class="mt-4 text-slate-600">No past events yet.</p>
{% else %}
    <div class="mt-6 divide-y divide-slate-200 rounded-2xl ring-1 ring-slate-200 bg-white">
    {% for p in past %}
        {% assign ev = p.event %}
        <article class="p-4 md:p-5 grid md:grid-cols-5 gap-3">
        <p class="text-sm text-slate-500 md:col-span-1">
            {{ ev.start.dateTime | default: ev.start.date | date: "%b %-d, %Y" }}
        </p>
        <div class="md:col-span-3">
            <a href="{{ p.url | relative_url }}" class="font-semibold hover:underline">
            {{ ev.summary | default: p.title }}
            </a>
            {% if ev.location %}
              {% if p.layout contains "public" %}
                <p class="text-sm text-slate-600 mt-0.5">{{ ev.location }}</p>
              {% else %}
                <p class="text-sm text-slate-600 mt-0.5">Location available in members calendar</p>
              {% endif %}
            {% endif %}
        </div>
        <div class="md:col-span-1 flex items-start md:justify-end">
          <a href="{{ p.url }}" target="_blank" rel="noopener"
             class="inline-flex items-center rounded-lg px-3 py-1.5 text-sm font-medium
                    ring-1 ring-slate-300 hover:bg-slate-50">
            View
          </a>
        </div>
        </article>
    {% endfor %}
    </div>
{% endif %}
</section>
