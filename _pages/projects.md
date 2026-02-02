---
layout: archive
title: "Projects"
permalink: /projects/
author_profile: true
---

{% assign visible_projects = site.projects | where_exp: "p", "p.show_in_projects != false" -%}
{% assign projects = visible_projects | where_exp: "p", "p.intro != true" | sort: "order" -%}
{% if projects and projects.size > 0 -%}
{% assign categories = projects | map: "category" | uniq -%}
<p class="projects-intro">A mix of research prototypes, open-source tooling, and production AI systems.</p>
{% for category in categories -%}
<section class="project-section">
  <h2>{{ category }}</h2>
  {% assign intro = visible_projects | where: "category", category | where: "intro", true | first -%}
  {% if intro and intro.content != "" -%}
    <div class="project-section__intro">{{ intro.content }}</div>
  {% endif -%}
  {% assign category_projects = projects | where: "category", category -%}
  <div class="projects-grid">
  {% for project in category_projects -%}
    {% include project-card.html project=project %}
  {% endfor -%}
  </div>
</section>
{% endfor -%}
{% else -%}
<p class="empty-state">No projects yet.</p>
{% endif -%}
