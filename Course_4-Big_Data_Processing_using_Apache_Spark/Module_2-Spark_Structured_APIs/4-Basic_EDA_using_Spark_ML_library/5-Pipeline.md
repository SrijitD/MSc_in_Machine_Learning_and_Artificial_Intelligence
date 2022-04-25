# Pipeline

In the previous segments, you went through various steps that are performed while preparing the data. You must have noticed how each process was implemented sequentially as a part of the preparation activities. Further, the output of each stage is a new dataframe, thus making the process suboptimal. Let’s explore how a pipeline can internally optimize these methods and improve efficiency.

**VIDEO**

Instead of executing a transform method at each preparation step, a pipeline clubs all the steps of data cleansing, scaling, normalising etc. in the desired sequence. Creating a pipeline will save you multiple steps and make your code more efficient. Also, once you have designed a pipeline with all the required steps, it can be reused for various datasets without severely altering the nature of the code for a similar dataset.  
 

A pipeline can be built by declaring the Pipeline object available in Spark ML library. Further, you need to build a PipelineModel by fitting the pipeline object on the data. Unlike the steps involved in previous segments, the PipelineModel will only take one data frame as input and output the final prepared DataFrame.

In the previous segments, we had used a total of three operations- Imputer, Assembler, Scaler. Each of these transformers and estimators can be mentioned as stages while defining the Pipeline object. Then you use a .fit() method to create a pipeline model, further using it to transform the data.

```python
# Import Pipeline and setting the stages of the pipeline
from pyspark.ml import Pipeline
pipeline =  Pipeline(stages = [imputer,assembler,scaler])
model = pipeline.fit(data)
Final_output = model.transform(data)
```

In short, a Pipeline is specified as a sequence of stages, and each stage is either a Transformer or an Estimator. These stages are run in order, and the input dataFrame is transformed as it passes through each stage. As you have studied earlier, there is no intermediate dataframe created at any stage. The lineage created in Spark facilitates the one-shot creation of the final dataframe.

So far you did different operations such as scaling the dataset, imputing missing values, converting features to a vector and also saw how to integrate various activities in the form of a pipeline. However, you haven't seen any visualizations made on the data. This is because spark API doesn't provide a good interface, unlike python for visualization. It is for this reason when you are handling huge datasets, you take a chunk of your data to get a basic idea of your dataset and then based on the inferences made you start building models on the larger datasets using Pyspark. You can also build a model locally on a smaller dataset using python and once you have a series of steps/ pipeline ready for data preparation and modelling after the exploratory data analysis and visualisations, you can translate these to PySpark code for running on a larger dataset on a cluster.

## Additional Reading

1.  Refer this link to read more about [Pipelines](https://spark.apache.org/docs/latest/ml-pipeline.html) 
2.   [The elegance of the Spark ML Pipeline](https://blog.insightdatascience.com/spark-pipelines-elegant-yet-powerful-7be93afcdd42)