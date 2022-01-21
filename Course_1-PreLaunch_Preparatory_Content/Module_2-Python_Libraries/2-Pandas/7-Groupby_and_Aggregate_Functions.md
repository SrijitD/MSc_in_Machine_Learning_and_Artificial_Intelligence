# Groupby and Aggregate Functions

Grouping and aggregation are two of the most frequently used operations in data analysis, especially while performing exploratory data analysis (EDA), where it is common to compare summary statistics across groups of data.

As an example, in the weather time-series data that you are working with, you may want to compare the average rainfall of various regions or compare temperature across different locations.

A grouping analysis can be thought of as having the following three parts:

- **Splitting the data** into groups (for example, groups of location, year and month)
- **Applying a function** on each group (for example, mean, max and min)
- **Combining the results** into a data structure showing summary statistics

In the upcoming video, you will learn how to perform grouping over the Pandas DataFrames using the same dataset as before.

**VIDEO**

As you saw in this video, the groupby function is a powerful function, and it can significantly reduce the work of a data scientist. The groupby() function returns a Pandas object, which can be used further to perform the desired aggregate functions. In the upcoming video, let’s take a look at another example of a groupby object in use.

**VIDEO**

In the next video, you will see another example, which is a high-level problem, wherein you will not only use the groupby and aggregate functions but also use a user-defined function to create a new column; you can then apply the groupby and aggregate functions over this column. It is a bit complex to reiterate the problem, and it is alright if you feel lost; you can watch the video again to get a better understanding. The learning from this video will not affect your journey further in this session.

**VIDEO**

**NOTE**: At 0.32, the text reads 'cill factor'; it should actually be 'chill factor'.

That was a fun example, wasn't it? Now, before moving further, note that if you apply the groupby function on an index, you will not encounter any error while executing the grouping and aggregation commands together. However, when grouping on columns, you should first store the DataFrame and then run an aggregate function on the new DataFrame.

#### Groupby function

Qn: What does the function: `dataframe.groupby()` return without any aggregate function?

- A new dataframe is created

- A Pandas object is created

- Changes are made in the existing DataFrame.

Ans: B.

- *It returns a Pandas object, which can be used to perform further desired aggregation function. Check the output using the `type` function.*

- If you run the `groupby` command without any aggregation command, you do not get a new dataframe. Try running the `groupby` command above without the `sum()` or `mean()` function.

### Dataframe grouping

#### Problem

Description

Group the dataframe 'df' by 'month' and 'day' and find the mean value for column 'rain' and 'wind'.

#### Solution

```python
import io
import requests
import pandas as pd
c = requests.get('https://query.data.world/s/vBDCsoHCytUSLKkLvq851k2b8JOCkF', verify=False)
s = c.content
df = pd.read_csv(io.StringIO(s.decode('utf-8')))

#Type your groupby command here

df_1 = df[["month", "day", "rain", "wind"]]
df_1 = df_1.groupby(by=["month", "day"]).mean()

print(df_1.head(20))
```

In the next segment, you will learn how to deal with multiple DataFrames.

## Additional Resources

Here is a video tutorial on [**grouping and aggregating using Pandas**](https://www.youtube.com/watch?v=txMdrV1Ut64).
