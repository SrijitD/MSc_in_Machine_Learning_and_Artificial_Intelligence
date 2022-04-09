# Launching the EMR Cluster

In this segment, you will learn about the first step of building an ETL pipeline, which involves cloning an existing cluster and choosing the necessary services for designing the pipeline.

**Things to Note for Launching EMR Cluster :**

- The expert has used a three-node cluster, but you are strongly recommended to use a two-node cluster to reduce the associated cost.

- The expert has cloned an existing cluster, but you can also create a new cluster by using advanced options to select the required services.

- The latest version of EMR cluster has issues running the hue service so it is recommended to use the 5.24.0 version. However, you wouldn’t face any issue while using the CLI.

Let's begin building the ETL pipeline starting by launching an EMR cluster.

**VIDEO**

Once the EMR cluster is launched, it shows a waiting state. You can SSH into the namenode of the cluster and view the list of services running on it.

To view the list of services running in the cluster, you can use the following command:

_**ls /etc/init.d/**_

#### EMR Cluster

Qn: Which of the following services are not necessary for our case study?

- Hive

- Sqoop

- Oozie

- Flume

Ans: D. _Sqoop is used to ingest structured data, whereas Flume is used for ingesting semi-structured or unstructured data. Hence, Flume is not required in our case study._
