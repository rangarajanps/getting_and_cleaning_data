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
<li>Subject - int</li>
<li>  <p>Stores the value of person whose measurement was taken</p>
  <p>Takes a value of 1 to 30</p></li>
</ul>

<ul>
<li>Activity - Factor with 6 levels</li>
<li>   Stores the name of the activity which was performed during measurement</li>
1.            WALKING
2.   WALKING_UPSTAIRS
3. WALKING_DOWNSTAIRS
4.            SITTING
5.           STANDING
6.             LAYING
</ul>

<ul>
<li>66 Variables - list below capture the mean and standard deviation for measurements taken in 3 Axis - X, Y and Z</li>

1. time.Body.Accelero.mean.X
2.	time.Body.Accelero.mean.Y
3.	time.Body.Accelero.mean.Z
4.	time.Gravity.Accelero.mean.X
5.	time.Gravity.Accelero.mean.Y
6.	time.Gravity.Accelero.mean.Z
7.	time.Body.Accelero.Jerk.mean.X
8.	time.Body.Accelero.Jerk.mean.Y
9.	time.Body.Accelero.Jerk.mean.Z
10.	time.Body.Gyro.mean.X
11.	time.Body.Gyro.mean.Y
12.	time.Body.Gyro.mean.Z
13.	time.Body.Gyro.Jerk.mean.X
14.	time.Body.Gyro.Jerk.mean.Y
15.	time.Body.Gyro.Jerk.mean.Z
16.	time.Body.Accelero.Mag.mean.
17.	time.Gravity.Accelero.Mag.mean.
18.	time.Body.Accelero.JerkMag.mean.
19.	time.Body.Gyro.Mag.mean.
20.	time.Body.Gyro.JerkMag.mean.
21.	freqDomSignal.Body.Accelero.mean.X
22.	freqDomSignal.Body.Accelero.mean.Y
23.	freqDomSignal.Body.Accelero.mean.Z
24.	freqDomSignal.Body.Accelero.Jerk.mean.X
25.	freqDomSignal.Body.Accelero.Jerk.mean.Y
26.	freqDomSignal.Body.Accelero.Jerk.mean.Z
27.	freqDomSignal.Body.Gyro.mean.X
28.	freqDomSignal.Body.Gyro.mean.Y
29.	freqDomSignal.Body.Gyro.mean.Z
30.	freqDomSignal.Body.Accelero.Mag.mean.
31.	freqDomSignal.Body.Body.Accelero.JerkMag.mean.
32.	freqDomSignal.Body.Body.Gyro.Mag.mean.
33.	freqDomSignal.Body.Body.Gyro.JerkMag.mean.
34.	time.Body.Accelero.std-dev.X
35.	time.Body.Accelero.std-dev.Y
36.	time.Body.Accelero.std-dev.Z
37.	time.Gravity.Accelero.std-dev.X
38.	time.Gravity.Accelero.std-dev.Y
39.	time.Gravity.Accelero.std-dev.Z
40.	time.Body.Accelero.Jerk.std-dev.X
41.	time.Body.Accelero.Jerk.std-dev.Y
42.	time.Body.Accelero.Jerk.std-dev.Z
43.	time.Body.Gyro.std-dev.X
44.	time.Body.Gyro.std-dev.Y
45.	time.Body.Gyro.std-dev.Z
46.	time.Body.Gyro.Jerk.std-dev.X
47.	time.Body.Gyro.Jerk.std-dev.Y
48.	time.Body.Gyro.Jerk.std-dev.Z
49.	time.Body.Accelero.Mag.std-dev.
50.	time.Gravity.Accelero.Mag.std-dev.
51.	time.Body.Accelero.JerkMag.std-dev.
52.	time.Body.Gyro.Mag.std-dev.
53.	time.Body.Gyro.JerkMag.std-dev.
54.	freqDomSignal.Body.Accelero.std-dev.X
55.	freqDomSignal.Body.Accelero.std-dev.Y
56.	freqDomSignal.Body.Accelero.std-dev.Z
57.	freqDomSignal.Body.Accelero.Jerk.std-dev.X
58.	freqDomSignal.Body.Accelero.Jerk.std-dev.Y
59.	freqDomSignal.Body.Accelero.Jerk.std-dev.Z
60.	freqDomSignal.Body.Gyro.std-dev.X
61.	freqDomSignal.Body.Gyro.std-dev.Y
62.	freqDomSignal.Body.Gyro.std-dev.Z
63.	freqDomSignal.Body.Accelero.Mag.std-dev.
64.	freqDomSignal.Body.Body.Accelero.JerkMag.std-dev.
65.	freqDomSignal.Body.Body.Gyro.Mag.std-dev.
66.	freqDomSignal.Body.Body.Gyro.JerkMag.std-dev.

</ul>
