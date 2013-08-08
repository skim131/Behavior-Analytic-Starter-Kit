Run recommendations processor
-----------------------------

Press “Launch recommendation processor” button on Behavior Analytics Platform application to launch 
[recommendation processor](Developer-Guide--Behavior-Analytics-Platform--Recommendation-Processor.md) on transaction log and to get recommendations. 
You can configure recommendation processor default parameters before the job starts. 

![launch recommendation processor][launch_recommendation_processor]

Following parameters can be configured: 
* URL to recommendation processor job 
* HDFS path to transaction log
* S3 bucket and filename for recommendations output on your private S3
* Minimal support level for PFP algorithm
* Number of groups for parallel processing 
After the job has been completed recommendations will be automatically placed to specified S3.

![launch recommendation proccessor dialog][launch_recommendation_proccessor_dialog]

[launch_recommendation_proccessor_dialog]: https://raw.github.com/griddynamics/Behavior-Analytic-Starter-Kit/master/docs/images/Developer%20Guide/launch_recommendation_proccessor_dialog.png
[launch_recommendation_processor]: https://raw.github.com/griddynamics/Behavior-Analytic-Starter-Kit/master/docs/images/Developer%20Guide/launch_recommendation_processor.png
