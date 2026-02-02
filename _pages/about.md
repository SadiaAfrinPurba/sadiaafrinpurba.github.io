---
permalink: /
title: ""
layout: archive
author_profile: true
redirect_from:
  - /about/
  - /about.html
---

{% assign about = site.data.about -%}
{% if about.title -%}
<h1 class="page__title">{{ about.title }}</h1>
{% endif -%}

{% if about.body -%}
<div class="bio">
  {{ about.body | markdownify }}
</div>
{% endif -%}

{% if site.data.site.resume_url -%}
<p class="resume-cta">
  <a class="btn-link" href="{{ site.data.site.resume_url | relative_url }}" target="_blank" rel="noopener">
    <i class="fas fa-file-download" aria-hidden="true"></i> {{ site.data.site.resume_label | default: "Download Resume" }}
  </a>
</p>
{% endif -%}

{% if about.interests and about.interests.size > 0 -%}
## Interests
{% for interest in about.interests -%}
- {{ interest }}
{% endfor -%}
{% endif -%}

## Recent News
{% include news-list.html %}

---

## Publications
{% include publication-list.html %}
