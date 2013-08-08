Starter kit components overview
-------------------------------

1. Behavior analytics platform

* Transaction Log generator - generates transaction logs using probabilistic customer behavior scenarios.
* Hadoop cluster - provides infrastructure to launch transaction log generating and recommendation processor jobs.
* Ganglia monitoring for Hadoop cluster - collects wide range of Hadoop cluster related metrics.
* Recommendation processor - implements an improved version of PFP-growth algorithm, extracts associative rules out of transaction log, and presents them as recommendations.

2. Web store

* Product catalog - contains information about products and its categories with product images in json format.
* Web store web UI - an application that allows users to add or remove products to/from a shopping cart and immediately view relevant recommendations.
