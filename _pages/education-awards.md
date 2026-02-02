---
layout: archive
title: ""
permalink: /education-awards/
author_profile: true
redirect_from:
  - /resume
---

<h1 class="section-title">Education</h1>

{% assign education = site.education | sort: "order" %}
{% for item in education %}
  <h3 class="entry-title">{{ item.degree }}{% if item.dates %} ({{ item.dates }}){% endif %}</h3>
  <p class="entry-meta">
    {% if item.institution_url %}<a href="{{ item.institution_url }}" target="_blank" rel="noopener">{{ item.institution }}</a>{% else %}{{ item.institution }}{% endif %}{% if item.location %}, {{ item.location }}{% endif %}.
  </p>
  {{ item.content }}
  <hr>
{% endfor %}

<h1 class="section-title">Experience</h1>

{% assign experience = site.experience | sort: "order" %}
{% for item in experience %}
  <h3 class="entry-title">{{ item.role }}</h3>
  <p class="entry-meta">
    {% if item.organization_url %}<a href="{{ item.organization_url }}" target="_blank" rel="noopener">{{ item.organization }}</a>{% else %}{{ item.organization }}{% endif %}{% if item.location %}, {{ item.location }}{% endif %}.
  </p>
  {% if item.dates %}<p class="entry-dates">{{ item.dates }}</p>{% endif %}
  {{ item.content }}
  <hr>
{% endfor %}
