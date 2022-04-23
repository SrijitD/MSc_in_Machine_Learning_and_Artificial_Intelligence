# Usecase I - IPL

In the previous segments, you understood the internal working of the optimiser in SparkSQL, and you are already well aware of dataframes. Let's now go through a use case for a better understanding of the entire Spark SQL process along with optimiser. Once you understand the use case, the next step will be to visualise the entire process using the Spark UI and then solve the use case in the upcoming segments. 

Let's now begin by understanding the use case in the following video.

**VIDEO**

Download [IPL dataset](IPL_Dataset.zip)

In the dataset, mentioned in the video above, we have a few tables. One table has the ball-by-ball data of IPL matches while the other has the details of the teams playing the matches. You have to perform the following two tasks:

**The task at hand:**

1.  Find the total number of sixes hit in the Wankhede stadium.
    
2.  Find the venue at which the maximum number of runs were scored.  
     
    

Now, let’s look at the data preparation steps that Sajan performed: 

```python
#read the csv file for number of runs scored
ball=spark.read.csv("Ball_By_Ball.csv", inferSchema=True, header=True)

#view the data stored in ball
ball.show()

#read the csv file for match data
match=spark.read.csv("Match.csv", inferSchema=True, header=True)

#view details about the match
match.show()

#For task 1: we will apply join operation over required columns
ball_subset=ball.select('Match_id','Runs_Scored')
match_subset=match.select('Match_id','Venue_Name')

#you can view the subset as:
ball_subset.show()
match_subset.show()

#apply join operation on them as follows:
ball_subset.createTempView("ball_table")

match_subset.createTempView("match_table")

df_joined= spark.sql("select match_table.Venue_Name, ball_table.Runs_Scored from ball_table left join match_table on ball_table.Match_id==match_table.Match_id")
```

**VIDEO**

You have understood the problem statement. Now, before proceeding to the solution, let’s take a look at SparkUI and visualise the execution plan in the upcoming segment.