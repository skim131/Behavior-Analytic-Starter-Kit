Launch applications
===================

Launch Sample store
-------------------

Click “Launch” button on sample store application dashboard to launch the sample store application in your environment.
It should take about 10 minutes for the application to finish loading.
Once sample store launches successfully you can see the URL to the sample store web UI from the application output panel.

Launch Behavior analytics platform
----------------------------------

Click “Launch” button on Behavior Analytics Platform application dashboard to launch the Behavior Analytics Platform application in the default environment.
Hadoop cluster will be deployed. 
It should take about 10 minutes (depends on slave node number) for the application to finish loading.

The Qubell platform constructs two applications from the  Behavior Analytics Starter Kit configuration (Behavior Analytics Platform and Web Store). 
During the launch process, the platform provisions the virtual machines, installs the necessary software packages using Chef, and sets up cluster configuration from the property file. 
Once the applications Behavior Analytics Platform and Web Store are running, everything is ready to use for the starter kit.

![launch apps][launch_apps]

[launch_apps]: https://raw.github.com/griddynamics/Behavior-Analytic-Starter-Kit/master/docs/images/Developer%20Guide/launch_apps.png
