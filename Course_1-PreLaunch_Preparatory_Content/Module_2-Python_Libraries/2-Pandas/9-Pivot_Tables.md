# Pivot Tables

A pivot table is quite a useful tool to represent a DataFrame in a structured and simplified manner. It acts as an alternative to the groupby() function in Pandas. Pivot tables provide excel-like functionalities to create aggregate tables.
Let’s watch the upcoming video and understand how to create pivot tables in Python using Pandas.

**VIDEO**

As you saw in this video, you can use the following command to create pivot tables in Pandas:

`df.pivot(columns='grouping_variable_col', values='value_to_aggregate', index='grouping_variable_row')`

The pivot_table() function can also be used to specify the aggregate function that you would want Pandas to execute over the columns that are provided. It could be the same or different for each column in the DataFrame. You can write the pivot_table command as shown below.

`df.pivot_table(values, index, aggfunc={'value_1': np.mean,'value_2': [min, max, np.mean]})`

The function given above, when substituted with proper values, will result in a mean value of value_1 and three values (minimum, maximum and a mean of value_2) for each row.  
In the next segment, you will attempt a few coding questions. Before attempting those questions, revise all the concepts and code that have been covered in this session. Since this module is based on coding, it is important that you practise, as practice is the best way to learn to code.

### Dataframe Pivot Table

#### Problem

Description

Group the data 'df' by 'month' and 'day' and find the mean value for column 'rain' and 'wind' using the pivot table command.

#### Solution

```python
import numpy as np
import io
import requests
import pandas as pd
c = requests.get('https://query.data.world/s/vBDCsoHCytUSLKkLvq851k2b8JOCkF', verify=False)
s = c.content
df = pd.read_csv(io.StringIO(s.decode('utf-8')))

df_1 = df.pivot_table(index = ['month','day'], 
                      values = ['rain','wind'], 
                      aggfunc = 'mean')
print(df_1.head(20))
```

## Additional Resources

Now that you have hands-on experience with Pandas, here is the [Pandas official documentation](https://pandas.pydata.org/pandas-docs/version/0.15/tutorials.html) for your reference.
