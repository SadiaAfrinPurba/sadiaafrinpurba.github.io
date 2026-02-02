---
draft: false
summary: This blog post is the part of Udacity Data Scientist Nanodegree.
authors:
  - Sadia Afrin Purba
lastmod: 2020-08-23T00:41:49+06:00
featured: true
date: 2020-08-23T00:41:49+06:00
subtitle: ""
title: Data Exploration on Graduation Admission Dataset from Kaggle
tags:
  - Udacity Nanodegree
  - Kaggle
  - Data exploration
projects: []
show_in_blog: false
image:
  caption: ""
  focal_point: ""
  preview_only: false
categories: []
---

![Photo by [Vasily Koloda](https://unsplash.com/@napr0tiv?utm_source=medium&utm_medium=referral) on [Unsplash](https://unsplash.com?utm_source=medium&utm_medium=referral)](https://cdn-images-1.medium.com/max/5252/0*Q7PLE8tU0hfEvgA_)

This blog post is the part of Udacity Data Scientist Nanodegree. The detailed codes can be found in my [Github](https://github.com/SadiaAfrinPurba/Write-A-Data-Science-Blog-Post) and [Kaggle](https://www.kaggle.com/purba01/analysis-of-graduate-admission?scriptVersionId=32175610).

> This blog post was originally published on [here](https://medium.com/@purba0101/data-exploration-on-graduation-admission-dataset-from-kaggle-473510a306cc).

**Project Motivation**

Students who want to pursue higher studies from abroad especially the United States of America often worried about their chance of admission to graduate school. The aim of this blog post is to help the aspirant students to focus on improving their profile in order to get admission in the top rating universities. This analysis should help students who are currently preparing or will be preparing to get a better understanding of the important criteria to get an admission.

Question 1: Does CGPA, GRE and TOEFL scores influence the chance of admission?

Question 2: Does previous research experiences have any influence on the chance of admission?

Question 3: If students do not have any research experience, what other criteria are important to get admission with higher probability?

Question 4: What is the most important feature in graduate admission?

> let’s find out the answers

<iframe width="900" height="500" frameborder="0" scrolling="no" src="//plotly.com/~sadia_afrin_purba/8.embed"></iframe>

There is a linear relationship between CGPA, GRE and TOEFL scores with the chance of admission. That means higher CGPA and GRE, TOEFL scores ensure a higher chance of admission.

<iframe width="90%" height="800" frameborder="0" scrolling="no" src="//plotly.com/~sadia_afrin_purba/12.embed"></iframe>

Previous research experiences increase the chance of admission. For example, 71 students who have previous research experience have more than a 90% chance of admission. Only 11 students without any research experience have more than 80% chance where 74 students with research experience have the same chance of admission.

<iframe width="1000" height="800" frameborder="0" scrolling="no" src="//plotly.com/~sadia_afrin_purba/14.embed"></iframe>

Minimum criteria of getting admission in a lower to medium rating university are

- GRE score 312

- TOEFL score 104

- CGPA 8.44

- LOR 1.5 and SOP 2

For getting admission in the highest rating university without having any previous research experience is difficult unless one has-

- GRE score 339

- TOEFL score 119

- LOR and SOP of 5

- CGPA 9.7

 <iframe width="90%" height="800" frameborder="0" scrolling="no" src="//plotly.com/~sadia_afrin_purba/16.embed"></iframe>

CGPA is the most important factor in Graduate Admission.

**Conclusions**

Data can tell interesting stories if we can communicate with them. However, nothing can beat hard work, so if you want to pursue higher studies and have a low CGPA do not let this analysis to demotivate you. Keep working hard and stay safe!

**References**

The data can be found [here](https://www.kaggle.com/mohansacharya/graduate-admissions).
