# Running the MapReduce Program

Let’s now look at the execution of a MapReduce job on a three-node cluster set-up. Recall that earlier, we moved the three files from our local file system to HDFS using the put command. Now, in the next video, let’s understand how to run a MapReduce job on these files in HDFS. You will also look at the output generated at the end of a MapReduce job.

**VIDEO**

In this video, you saw how to run a MapReduce program on an on-premise three-node cluster. In order to run a MapReduce job, the first thing that you require is a JAR file, which packs all the files necessary for execution. Let’s understand the content wordcount program, which contains the logic for the whole execution.

```java
public static class TokenizerMapper 
        extends Mapper<Object, Text, Text, IntWritable> {    
    private final static IntWritable one = new IntWritable(1);
    private Text word = new Text();

    public void map(Object key, Text value, Context context
                    ) throw IOException, InterruptedException {
        StringTokenizer itr = new StringTokenizer9value.toString());
        while (itr.hasMoreTokens()) {
            word.set(itrnextToken());
            context.write(word, one);
        }
    }
}
```

The code snippet above shows the implementation of a mapper class. Here, you are taking each line as the input and converting it into word, one where word represents the key and one represents the value. So essentially, you are implementing a mapper here.

Sample Input - Hello this is Mapper  
Sample Output here would be - {hello, 1}, {This, 1} {is, 1} {Mapper, 1}

```java
public static class IntSumReducer
        extends Reducer<Text, IntWritable, IntWritable> {
    private IntWritable result = new IntWritable();
    
    public void reduce(Text key, Iterable<IntWritable> values,
                       Context context
                       ) throws IOException, InterruptedException {
        int sum = 0;
        for (IntWritable val : values) {
            sum += valget9);
        }
        result.set(sum);
        context.write(key, result);
    }
}
```

The next step is the reducer implementation, where you will aggregate the values based on a particular key. For example, let’s say you have the key-value pairs from mappers as follows: {hello, 1}, {This, 1} {is, 1} {Mapper, 1} {hello, 1}, {This, 1} {is, 1} {Reducer, 1} . On passing these to the reducer, you would get {hello, 2}, {This, 2} {is, 2} {Mapper, 1} {Reducer, 1}.

```java
public static void main(String[] args) throws Exception {
    Configuration conf = new Configuration();
    Job job = Job.getInstance(conf, "word count")
    job.setJarByClass(WordCount.class);
    job.setMapperClass(TokenizerMapper.class);
    job.setCombinerClass(IntSumReducer.class);
    job.setReducerClass(IntSumReducer.class);
    job.setOutputKeyClass(Text.class);
    job.setOutputValueClass(IntWritable.class)
    FileInputFormat.addInputPath(job, new Path(args[0]));
    FileOutputFormat.setOutputPath(job, new Path(args[1]));
    System.exit(job.waitForCompletion(true) ? 0 : 1);
}
```

During the execution of the MapReduce program, you see a lot of logs being generated before arriving at the final results. These logs contain a lot of information, and it is essential for us to understand these logs. Let’s dive into details in the next video.

**VIDEO**

With this, we have come to the end of our session on ‘MapReduce Framework’. Let’s quickly summarise all the topics that you have learnt so far.

#### MapReduce Concepts - More than One Answer Type

Qn: For the successful execution of a MapReduce job, which configuration parameter(s) need to be appropriately specified?  
(Note: More than one option may be correct.)

- Driver Class

- .jar file

- Input Path

- Output Path

Ans: All of the above. *A MapReduce job can be executed only if you specify the .jar file containing the Driver, Mapper and Reducer classes, where the classes contain the Map and Reduce functions and the input and output formats.*

## Coming up

In the next segment we will summarise all the concepts you learnt in this session.
