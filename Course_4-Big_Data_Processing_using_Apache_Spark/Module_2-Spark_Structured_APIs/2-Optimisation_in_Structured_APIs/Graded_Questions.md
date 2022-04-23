# Graded Questions

You solved the IPL problem in the previous segments. You will be using the same datasets for the following questions.  All the best!

**Note:** The following questions are **'graded'.** Please be careful while attempting them!

Download [IPL dataset](IPL_Dataset.zip)


#### Optimization in SparkSQL

Qn: Who was the ‘Man of the Match’ the maximum number of times?

- MS Dhoni

- MF Maharoof

- CH Gayle

- V Sehwag

Ans: C. *You can solve the following query using the join as follows:*

```python
match=spark.read.csv("Match.csv", inferSchema=True, header=True)

match_subset=match.select('Match_id','ManOfMach')

abcd = match_subset.groupBy('ManOfMach').count()
abcd.orderBy(abcd['count'].desc()).show()
```

*The player whose name appears at the top of the list is the player with the maximum number of 'Man of the Match' awards. In this case, the player is CH Gayle.*


Qn: Find the total runs scored by the player who won most of the Man of the Match awards. (found in the earlier question) Note: Do not count the extras

- 3606

- 6565

- 4804

- 4891 

Ans: A. *You need to find the runs scored by CH Gayle for that join player and ball_by_ball tables. The following code will help you.* 

```python
df_ball = spark.read.csv("Ball_By_Ball.csv", inferSchema=True, header = True)

df_player = spark.read.csv("Player.csv", inferSchema=True, header = True)

df_player.createOrReplaceTempView("player")

df_ball.createOrReplaceTempView("ball")

df_join = spark.sql("select * from ball left join player on ball.Striker == player.Player_Id")

df = df_join.select('Runs_Scored','Player_Name','Extra_Type').filter("Player_Name == 'CH Gayle'and Extra_Type=='No Extras' ")

from pyspark.sql.functions import sum

df.select(sum(df.Runs_Scored)).show()
```


#### Querying in SparkSQL

Qn: Who scored the highest number of runs in the year 2010? (Do not consider extras)

- SR Tendulkar, 615

- JH Kallis, 572

- SK Raina, 628

- M Vijay, 458

Ans: A. *Join the tables **Ball_By_Ball** and **Player** using the unique player identifier. Then join this combined table with the Match table using the unique match identifier. Use the column Season_Year and filter for the year 2010. Then groupBy the player names and calculate the sum of the Runs_Scored. The following code will help execute the same.*

```python
df_ball = spark.read.csv("ball_by_ball.csv", inferSchema=True, header = True)
df_player = spark.read.csv("player.csv", inferSchema=True, header = True)
df_match = spark.read.csv("match.csv", inferSchema=True, header = True)

df_match.createOrReplaceTempView("match")
df_ball.createOrReplaceTempView("ball")
df_player.createOrReplaceTempView("player")

df_join = spark.sql("select * from ball left join player on ball.Striker == player.Player_Id")
df_join.createOrReplaceTempView("join1")

df_large= spark.sql("select * from join1 left join match on join1.MatcH_id == match.match_id")

df_year = df_large.select(['Striker','Player_Name','Runs_Scored','Season_Year'])

df= df_year.filter("Season_Year == 2010 and Extra_Type=='No Extras' ")

final_df = df.groupby("Player_Name").sum('Runs_Scored')

final_df.orderBy(final_df['sum(Runs_Scored)'].desc()).show()
```


#### Optimisation in SparkSQL

Qn: Check SparkUI for the query that you wrote to find the player who scored the highest runs in 2010. What type of join was used to join any of the two tables?

- Sort-merge join

- Hash-aggregate join

- Broadcast hash join

- Exchange join

Ans: C. *This is the most efficient type of join. It is commonly used to perform most of the joins; in this case, also the same type of join is used.*