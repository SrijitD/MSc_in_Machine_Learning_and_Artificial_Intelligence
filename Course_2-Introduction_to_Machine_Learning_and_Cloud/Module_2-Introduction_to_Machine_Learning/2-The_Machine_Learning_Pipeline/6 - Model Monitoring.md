# Model Monitoring

Once you have developed the model and successfully deployed it, the last step would be to continuously track its performance. This is done in the model monitoring phase.

Let’s look at the key aspects of model monitoring in the next video:

**VIDEO**

Model monitoring plays an essential part in making sure that the model’s performance doesn’t deteriorate over time. Also, it helps identify some of the bugs in the system faster. Unexpected things can turn up in production systems, so it is crucial to detect anomalies as early as possible and take corrective action. It gives business users an overview of the metrics that are impacted by the system.

Steps involved in model monitoring are:

1. **Data logging**: All the requests and responses are logged in corresponding data storage systems. This helps in debugging issues as one can easily replicate the issue in the dev environment.
2. **Reporting**: Once you have defined the metrics, the next step is to provide a UI or dashboard for all stakeholders to access and obtain timely updates. Different visualization tools like Tableau, QlikView and PowerBI can be used to design a dashboard that can display all the above metrics.
3. **Alerting**: An important step is setting up alerts to notify stakeholders about problems in the system. Alerts are a set of rules created using a combination of metrics that are critical and indicate problems with the system.
4. **Resolution**: Once the problem is detected, the next course of action would be:
   - Having a “hot-fix” layer, which enables the system to provide appropriate output by bypassing the ML model.
   - Re-training the model.

The image below best summarizes the concepts learned in this segment. (Please hover on the image for the zoom-in option)

![Model_Monitoring](https://i.ibb.co/GTW7sMZ/Model-Monitoring.png)

Now answer the following questions:  

#### Model Monitoring

Qn: Which metrics should be monitored after an ML model is put in production?  

- CPU utilization
- Latency
- Throughput
- All of the above.

Ans: All the above metrics need to be monitored after an ML model is put into production.  
