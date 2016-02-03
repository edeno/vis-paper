---
title: New tools for web-enabled interactive visualizations of electrophysiological data
author:
  - '\normalsize Eric L. Denovellis'
  - '\normalsize Emily P. Stephen'
  - '\normalsize Daniel H. Bullock'
bibliography: src/vis-paper.json
csl: src/frontiers-in-neuroinformatics.csl
link-citations: true
linkcolor: red
fontsize: 12pt
mainfont: 'Times New Roman'
keywords: ["Visualization", "Neurophysiology", "Open Source", "Interactive", "Web-enabled", "Electrophysiology", "Generalized Linear Models"]
<!-- header-includes:
    - \usepackage{lineno}
    - \linenumbers -->
abstract: |
  Electrophysiology datasets in neuroscience are becoming richer and more complex as data is collected on multiple scales, dataset sizes increase, and more sophisticated questions are asked of the data. Visualization is an essential tool for understanding these datasets at all stages of analysis, but current practices in visualization of electrophysiological data are limited in their ability to efficiently compare between visualizations (such as displaying relationships between a raster plot of neuronal spiking to a visualization of a firing rate model of the same neuronal population) and filter complex data (for example, by limiting a visualization to specific brain areas on demand). Such difficulties are only magnified as the amount of data increases.

  This paper describes a set of composable<!-- If you use the word composable here, I would also use it in the body of the paper and define it there. I think it's a useful word, but I didn't immediately know what it meant in this context-->, web-enabled interactive visualization tools developed for use in electrophysiological studies. These tools were developed to facilitate (1) exploratory data analysis, (2) checking of raw data and statistical modeling assumptions, and (3) data presentation in the context of large, complex and multi-scale neuroscience data. Data from several experiments were used to test the tools. These visualization tools are viewable in the web browser and open-source, making them easily shareable online and allowing for modification and development by the neuroscience community.
---
