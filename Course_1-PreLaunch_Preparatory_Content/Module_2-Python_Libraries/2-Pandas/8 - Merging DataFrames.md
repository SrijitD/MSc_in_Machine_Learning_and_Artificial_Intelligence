# Merging DataFrames

In this segment, you will learn how to merge and concatenate multiple DataFrames. In a real-world scenario, you would rarely have the entire data stored in a single table to load into a DataFrame. You will have to load the data into Python using multiple DataFrames and then find a way to bring everything together.

This is why merge and append are two of the most common operations that are performed in data analysis. You will now learn how to perform these tasks using different DataFrames. Let’s start with merging. The dataset that you have been working with contains only weather data and no sales data. Sales data is stored in a different data set. Now, how would you combine these datasets? Let’s find out in the upcoming video.

**VIDEO**

As you saw in this video, you get an error when trying to join the two DataFrames. What do you think could be the reason for this error? Give it some thought; watch the video again if you want to. Here is a hint: Look closely at all the column names in both the DataFrames. Once you think you have the answer, proceed to the next video.

**VIDEO**

You can use the following command to merge the two DataFrames given above:

`dataframe_1.merge(dataframe_2, on = ['column_1', 'column_2'], how = '____')`

In the next video, we will take a look at the useful attribute ‘how’, which is provided by the merge function.

**VIDEO**

The attribute `how` in the code given above specifies the type of merge that is to be performed. Merges are of the following different types:

- `left`: This will select the entries only in the first dataframe.
- `right`: This will consider the entries only in the second dataframe.
- `outer`: This takes the union of all the entries in the dataframes.
- `inner`: This will result in the intersection of the keys from both frames.

Depending on the situation, you can use an appropriate method to merge the two DataFrames.

#### Merging Dataframes

Qn: Suppose you are provided with two dataframes:

![](https://i.ibb.co/rxZ4f0D/State-Capital-Population.png)

From the two dataframes above, how will you generate the following dataframe?

![](https://i.ibb.co/LNH3pr7/State-Capital-Population-Combined.png)

- df_1.merge(df_2, how = 'left') 

- df_1.merge(df_2, how = 'right') 

- df_1.merge(df_2, how = 'inner') 

- df_1.merge(df_2, how = 'outer')

Ans: C. *The ‘inner’ option is useful when you want those elements that are common in both the dataframes.*

### Dataframes Merge

#### Problem

Description

Perform an inner merge on two data frames df_1 and df_2 on  'unique_id' and print the combined dataframe.

#### Solution

```python
import io
import requests
import pandas as pd
c1 = requests.get('https://query.data.world/s/vv3snq28bp0TJq2ggCdxGOghEQKPZo', verify=False)
s1 = c1.content
df_1 = pd.read_csv(io.StringIO(s1.decode('utf-8')))
c2 = requests.get('https://query.data.world/s/9wVKjNT0yiRc3YbVJaiI8a6HGl2d74', verify=False)
s2 = c2.content
df_2 = pd.read_csv(io.StringIO(s2.decode('utf-8')))

df_3 = df_1.merge(df_2, how="inner", on="unique_id")
print(df_3.head(20))
```

## Concatenating Dataframes

Concatenation is much more straightforward than merging. It is used when you have dataframes with the same columns and want to stack them on top of each other, or with the same rows and want to append them side by side.

You can add columns or rows from one dataframe to another using the concat function:

`pd.concat([dataframe_1, dataframe_2], axis = _)`

To append rows, you have to set the axis value as 0. For adding columns from one dataframe to another, the axis value must be set as 1. If there are any extra columns or rows where there are no values, they are replaced with ‘NaN’.

You can also perform various mathematical operations between two or more dataframes. For example, you may have two dataframes for storing the sales information for 2018 and 2019. Now, you want the sales data combined for a period of two years. In such a case, the add function in Pandas allows you to directly combine the two dataframes easily. 

Apart from merge, append or concat, you can perform mathematical operations to combine multiple dataframes. When two dataframes have the same row and column labels, you can directly use the mathematical operators provided in the following list:

- `add()`: +
- `sub()`: -
- `mul()`: *
- `div()`: /
- `floordiv()`: //
- `mod()`: %
- `pow()`:**

Pandas will return the derived values with the same labels in a combined dataframe. It also provides the attribute `fill_value` to control how you want to deal with the values that are not common between two dataframes. You can refer to the [documentation](https://pandas.pydata.org/pandas-docs/stable/reference/api/pandas.DataFrame.add.html) for the same. For a better understanding of these, function explores the following notebook. 

Now, let's solve an example of the `add()` function.

### Dataframe Append

#### Problem

Description

Append two datasets df_1 and df_2, and print the combined dataframe.

#### Solution

```python
# Suppressing warnings
import warnings
warnings.simplefilter("ignore")

import pandas as pd
df_1 = pd.read_csv('https://query.data.world/s/vv3snq28bp0TJq2ggCdxGOghEQKPZo')
df_2 = pd.read_csv('https://query.data.world/s/9wVKjNT0yiRc3YbVJaiI8a6HGl2d74')

df_3 = pd.concat([df_1, df_2])

print(df_3.head())
```

### Operations on multiple dataframes

#### Problem

Description

Given three data frames containing the number of gold, silver, and bronze Olympic medals won by some countries, determine the total number of medals won by each country.   
Note: All the three data frames don’t have all the same countries. So, ensure you use the ‘fill_value’ argument (set it to zero), to avoid getting NaN values. Also, ensure you sort the final dataframe, according to the total medal count in descending order.

#### Solution

```python
import numpy as np 
import pandas as pd

# Defining the three dataframes indicating the gold, silver, and bronze medal counts
# of different countries
gold = pd.DataFrame({'Country': ['USA', 'France', 'Russia'],
                         'Medals': [15.0, 13.0, 9.0]}
                    )
silver = pd.DataFrame({'Country': ['USA', 'Germany', 'Russia'],
                        'Medals': [29.0, 20.0, 16.0]}
                    )
bronze = pd.DataFrame({'Country': ['France', 'USA', 'UK'],
                        'Medals': [40.0, 28.0, 27.0]}
                    )

final_set = pd.concat([gold, silver, bronze])
result = final_set.groupby(['Country']).agg('sum').sort_values(['Medals'], ascending=False)
print(result)
```

In the next segment, you will learn how to create pivot tables using Pandas.

## Additional Resources:

**[Merge, Join, Append, Concat using Pandas - Is there a preference?](https://www.youtube.com/watch?v=g7n1MZyYjOM)**
