# Data Sampling

The actual data set given on Kaggle has **40M** rows. It is not wise to start building a prediction model with such a large data set because the iterative process of model building will utilise a lot of resources. The best practice is to start with a small data set, iterate and build a good model, and then use the pipeline on a large data set with some minor tweaks. 

Sampling involves selecting a subset of data from a larger data set. This selection may be done in many ways. You can read about them [here](https://machinelearningmastery.com/statistical-sampling-and-resampling/). In this exercise, let’s use stratified random sampling. While taking a stratified sample, the data is divided into strata, and then a proportionate random sample is drawn from each stratum as shown in the diagram given below.

![Data Sampling](https://i.ibb.co/dmsd1N4/Data-Sampling.png)

The number of data points drawn from a particular stratum is in the same proportion as the stratum in the complete data set. For example, suppose the CTR data set has **87% false** labels and **13% true** labels. So, the drawn sample should also maintain the same ratio of true and false labels. 

In the next video, let’s apply stratified sampling to the data set to draw a smaller data set that can be used for further analysis.

**VIDEO**

The greatest advantage of stratified sampling is that the drawn sample represents the actual data set. This ensures that the model gives relevant weightage to all the classes. While stratified sampling creates a representative sample, you need to be careful about the number of strata that you create.

For example, recall that in the previous segment, Jaidev showed that you can obtain hundreds of unique combinations by combining the three columns ‘site_domain’, ‘site_catagorie’ and ‘site_id’. Imagine drawing a sample to represent this combination. It will be extremely tedious to code and keep track of all the strata and the number of data points to be drawn from them. This is why usually, the strata used for sampling are restricted to the label column. This restriction leads to some variation that occurs due to random sampling. This can be smoothened out by drawing multiple samples and training the model on them. 

  
As you saw in the video, Jaidev created a function to draw a stratified sample from the data set, and because the label had only two possibilities, it was easy to write this function. Find the code written by Jaidev in the Notebook lined here. The Notebook has the code for the next couple of segments as well. 

Download [Pipeline Notebook](CTR_02_Pipeline.ipynb)

Suppose there were 10 labels; then, a great deal of effort would be spent in writing a function. The sampleByKey() function in the Spark library can draw a stratified sample. sampleByKey() essentially does the same thing as the function, only without the complexity.

```python
df.sampleByKey(False , {a:0.4, b:0.6} , seed = 0)
```

The following are the arguments of the function:   
**False**: A Boolean value representing whether the sample is drawn with or without replacing. Here 'False' denotes 'without replacement'.  
**{a:0.4, b:0.6}**: A dictionary with the information of the proportion to be drawn from a class.  
**Seed** = 0: This number represents the sample drawn, i.e., if the seed is the same, then the resulting sample will also be the same. You can read about this function in the Spark docs [here](https://spark.apache.org/docs/2.4.5/api/python/pyspark.html#pyspark.RDD.sampleByKey).

If the function exists in the library, what is the reason for writing a function to achieve the same result? Writing the function has an additional advantage of having greater control over the process. 

#### Stratified Sampling

Qn: The function that is used to draw a stratified sample is given below. 

```python
def stratifiedSample(df, N, labelCol="y"):
    ctx = df.groupby(labelCol).count()
    ctx = ctx.withColumn('frac', col("count") / df.count())
    frac = ctx.select("y", "frac").rdd.collectAsMap()
    pos = int(floor(frac[1] * N))
    neg = int(floor(frac[0] * N))
    posDF = df.filter(col(labelCol) == 1).orderBy(rand()).limit(pos)
    negDF = df.filter(col(labelCol) == 0).orderBy(rand()).limit(neg)
    return posDF.unionAll(negDF).orderBy(rand())
```

What change will you make to the code to make it draw a sample with 60% data points with label ‘0’ and 40% data points with label ‘1’?

- Replace 

```python
frac = ctx.select("y", "frac").rdd.collectAsMap()
```

With

```python
frac = ctx.select("y", {1:0.4, 0:0.6}).rdd.collectAsMap()
```

- Replace

```python
pos = int(floor(frac[1] * N))
neg = int(floor(frac[0] * N))
```

with

```python
pos = int(floor(0.4 * N))
neg = int(floor(0.6 * N))
```

- Replace

```python
posDF=df.filter(col(labelCol)== 1).orderBy(rand()).limit(pos)
negDF=df.filter(col(labelCol)== 0).orderBy(rand()).limit(neg)
```

with

```python
posDF=df.filter(col(labelCol)== 1).orderBy(rand()).limit(0.4)
negDF=df.filter(col(labelCol)== 0).orderBy(rand()).limit(0.6)
```

Ans: B. *You will get the expected result from this.*

Next, let’s transform data into a form that can be accepted by the logistic regression algorithm.