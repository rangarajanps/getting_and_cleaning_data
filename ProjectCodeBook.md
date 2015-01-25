---
title: "Project Code Book"
author: "Rangarajan"
date: "Sunday, January 25, 2015"
output: html_document
---

Data files contain the following 3 attributes
1. Subject i.e. person whose measurement was taken
2. Activity i.e. what is the activity which the person performed while readings were taken
3. Observations i.e. measurement points in 3 Axis X, Y and Z

Based on measurements, mean, standard deviation of different parameters were calculated and stored in it

<ul>
<li>Subject int</li>
<li>  <p>Stores the value of person whose measurement was taken</p>
  <p>Takes a value of 1 to 30</p></li>
</ul>

<ul>
<li>Activity Factor with 6 levels
<li>   Stores the name of the activity which was performed during measurement
```{r}
actv_lbl
```
</ul>

<ul>
66 Variables list below capture the mean and standard deviation for measurements taken in 3 Axis - X, Y and Z
```{r}
names(grpd_dt)[3:68]
```
</ul>
