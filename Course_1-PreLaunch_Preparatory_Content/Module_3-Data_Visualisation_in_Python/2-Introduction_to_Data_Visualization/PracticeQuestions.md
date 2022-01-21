# Practice Questions

To answer the following questions, please download the notebook and the datasets from the zip file given here. The notebook contains pre-written code for importing the necessary files and additional hints and guidelines for the questions. Solve the questions in the notebook and answer the questions given below.

## Part I

Load the data set describing the batting performance of Virat Kohli. For those of you who are not familiar with cricket terminology, please check the accompanying data dictionary as well.

#### Spread in runs

Qn: Analyse the spread of runs scored by Virat in all his matches, and report the difference between the scores at the 50th percentile and the 25th percentile, respectively.  

- 16.5

- 22.5

- 26.5

- 32.5

Ans: C. *First, you need to observe that the Runs column in the dataset is of object type because of some scores having an asterisk (*) symbol along with them, indicating that Virat was not out in that match (Check the dictionary if you have any doubt).*

`df['Runs']= df['Runs'].apply(lambda x: int(x[:-1]) if x[-1]=="*" else int(x))`

*Once the necessary data cleaning tasks are done, use a describe() function, with percentiles parameter set at 0.25, 0.5 and 1.*

`df['Runs'].describe(percentiles = [0.25,0.5,1])`

*This gives the value at 25th percentile as 10.00 and at 50th percentile as 32.5. Hence, the difference comes out to be 32.5-10.00 = 22.5.*

#### False Statement

Qn: Consider the following statements and choose the correct option:  
**I -** Virat has played the maximum number of matches in 2011.  
**II -** Virat has the highest run average in the year 2017.  
**III -** Virat has the maximum score in a single match and the highest run average in the year 2016.

Which of the above statements is/are false?  

- I and II

- I and III

- II

- III

Ans: C. *First, you have to do some formatting to the ‘Start Date’ column to get the year in which the match was played.*

```python
df['Start Date']= df['Start Date'].apply(lambda x: (x[-2:]))
```

*After that, do a value_counts() to find the number of matches played in each year.*

```python
df['Start Date'].value_counts()
```

*Next, create a pivot table with the ‘Start Date’ entities as the columns, values set to ‘Runs’, and aggfunc() set to np.mean and np.max.*

```python
pd.pivot_table(df, values='Runs',columns=['Start Date'], aggfunc=np.mean)
pd.pivot_table(df, values='Runs',columns=['Start Date'], aggfunc=np.max)
```

#### Highest Frequency

Qn: Next, from the following options choose the range in which he has scored more frequently or highest number of times

- [72,83)

- [83,91)

- [92,102)

- He has scored an equal number of times in all the above run brackets.

Ans: A. *Notice that the range differences are not the same for all three options. Hence, plotting a histogram will not give you an accurate result. Therefore, apply a qualifier and check again.*

```python
len(df[(df['Runs']>=72) & (df['Runs']<83)])
len(df[(df['Runs']>=83) & (df['Runs']<91)])
len(df[(df['Runs']>=92) & (df['Runs']<102)])
```

*This will help you find out that he has scored the highest number of times (6) in the [72,83) bracket.*

#### Maximum frequency

Qn: Plot a histogram for the Mins column with 15 bins and report the range having the maximum frequency among the given options.  

- [54.6,68)

- [68,81.4)

- [121.6,135)

- All the bin ranges have the same frequency

Ans: C. *Observe that the Mins column is also of an object type. This is due to the fact the some of the records are erroneous and have a ‘-’ value instead of a number. Therefore, we need to drop these records and convert the entire column to an int type column. Again, this can be done by using the qualifier [~(df['Mins']== "-")]. The code is as follows:*

```python
df2 = df[~(df['Mins']== "-")]
df2['Mins'] = df2['Mins'].apply(lambda x: int(x))
```

*Then, just create a histogram in matplotlib with bins=15.*

```python
plt.hist(df2.Mins, bins = 15)
```

*Once that is done, you can observe that [121.6, 135) has the maximum frequency.*

#### Correct Statements

Qn: Using the modified dataset from the previous question (i.e., such that it doesn’t contain the rows having an incorrect Mins value), plot box plots of the runs scored by Virat in matches against Sri Lanka, Australia and England. Now, consider the following statements:

**1)** Virat has scored pretty similarly against both Australia and England.  
**2)** The highest score by Virat is against Sri Lanka.  
**3)** Among the three countries, the highest value at the upper fence occurs for Sri Lanka.  
**4)** Australia’s IQR is the widest.

Which of the above statements are correct?  

- 1, 2, and 4

- 1, 2, and 3

- 2 and 4

- 1 and 2

Ans: C. *First, make sure that you’ve chosen the modified dataset. After that, filter out the countries as per the given question and take them as NumPy arrays. Now, plot a box plot with the three arrays.*

```python
aus = np.array(df2[df2['Opposition']== "v Australia"]['Runs'])
sri = np.array(df2[df2['Opposition']== "v Sri Lanka"]['Runs'])
eng = np.array(df2[df2['Opposition']== "v England"]['Runs'])
```

*If aus, sri and eng are the 3 arrays, the box plot would be*

```python
plt.boxplot([aus, sri, eng])
plt.xticks((1,2,3),["aus", "sri", "eng"])
plt.show()
```

*Now, from the box plots, you can clearly see that the IQR is pretty wide for Australia. Also, the highest score is against Sri Lanka.*

#### True Statements

Qn: From the same modified dataset as the previous question, create a box plot and a histogram (take the number of bins as 3) as sub-plots for all the run scores in which the mode of dismissal was ‘lbw’. Now, consider the following statements:

**I -** The box plot shows one outlier lying outside the fence at the score of 75.  
**II -** The maximum frequency of scores lie between [20-41).  
**III-** The median score lies between 30-40.

Which of the above statements is/are true?  

- I

- I and II

- II

- II and III

Ans: C. *First, choose the appropriate filter as given in the question and take the runs in a NumPy array.*

```python
lbw = np.array(df2[df2['Dismissal']== "lbw"]['Runs'])
```

*After that, create a box plot and a histogram as sub-plots using the matplotlib functionality.*

```python
fig, ax = plt.subplots(ncols=2)
ax[0].boxplot(lbw)
ax[1].hist(lbw,bins = 3)
```

*Once everything is done correctly, you can see that the box plot shows one outlier at a value of 61. The histogram shows that the maximum frequency of scores lies between [20-41), and the median value lies between 20-30. Hence, only II is the correct answer.*

## Part II

Load the dataset named "spd.csv". This dataset contains 3 columns: "Sales", "Profit", "Discount". All the columns have the following issues with the values in the columns:  
1)Some of the values are blank.  
2)Some of the entries have certain additional characters stored in them due to a data export issue. For example, in one of the entries instead of 0.2  it has been stored as 0.%$2. Similarly, another entry 0.8 has been stored as 0@.8.

Your task is to remove the null values and clean all the entries containing the additional characters.
Note - You **might** need the help of the [str.isnumeric()](https://pandas.pydata.org/pandas-docs/stable/reference/api/pandas.Series.str.isnumeric.html) function, which helps in determining whether a given string is numeric or not.

#### Null Values

Qn: Find the number of null values in each of the columns and delete all the entries having null values. Remember to remove the null values from all three columns after answering this question for further analysis.

- Sales - 17; Profits - 19; Discounts - 22

- Sales - 17; Profits - 22; Discounts - 19

- Sales - 19; Profits - 22; Discounts - 17

- Sales - 22; Profits - 19; Discounts - 17

Ans: C. Use the isnull().sum() function to get the total number of null values.

```python
#find the null values using isnull().sum()
df2['Sales'].isnull().sum()
#similarly find others as well
```

#### Incorrect Statements

Qn: After you’ve removed the null values, clean the Sales column by replacing the bogus entries with the correct ones. After that, create a box-plot of all the products with Sales greater than 3000, and then consider the following statements:

**I)** The median value comes out to be between 2500-5000.  
**II)** There are no outliers, i.e., values outside either fence for this box plot.  
**III)** There are 3 entries having a Sales value greater than 15000.

Which of the above statements is/are incorrect?

- I

- II and III

- III

- I and II

Ans: B. *First, we drop all na values as:*

```python
#drop all na values from all 3 columns
df2=df2.dropna(axis=0, how="any")
```

*We then make a function called cleaner that we will use to clean Sales column*

```python
#this function is like a filter that will remove all the non allowed values from the string and return a float
def cleaner(string):
    clean_str="".join(filter(lambda x: (x in "0123456789."), string))
    return float(clean_str)
#use this function under apply to clean Sales column
df2['Sales']=df2['Sales'].apply(cleaner)
```

*And then all that's left is to slice the rows with Sales>3000 and plot its box plot*

```python
Sales=df2[df2['Sales']>3000]['Sales']
plt.boxplot(Sales)
```

*Clearly Statement II and III are incorrect.*

#### Box Plot

Qn: Now that you’ve cleaned the bogus entries from the Sales column, go ahead and clean the Profits column as well. After that, create a boxplot of all the values that have Profits greater than 2000 and report back the approximate median value.

- 3500

- 4500

- 2800

- 5500

Ans: C. *You don't have to use a box plot for this, you can do this simply by doing describe on the cleaned dataset.*

*We clean the dataset using a similar function as for Sales*

```python
#We will use the same cleaner function here to clean profit, but in this case
#there are negative profits as well, so we will have to change the allowed string
#this function is like a filter that will remove all the non allowed values from the string and return a float
def Profit_cleaner(string):
    clean_str="".join(filter(lambda x: (x in "0123456789.-"), string))
    return float(clean_str)
```

*Next, instead of plotting boxplot we can also use median() functionality or describe() to find the median.*

```python
#We use Profit_cleaner to clean Profits 
df2['Profits']=df2['Profits'].apply(Profit_cleaner)
Profit=df2[df2['Profits']>2000]['Profits']
Profit.describe()
#the median is at 50%
```

*plotting the boxplot can be done as*

```python
#plotting box plot
plt.boxplot(Profit)
```

*to obtain the following boxplot*

####

#### Clean Data

Qn: Once you have cleaned this column, report back the total number of times either a discount of 0.5, 0.1 or 0.6 was given.  

- 134

- 182

- 284

- 296

Ans: D. *Just like earlier we first clean the column using the same cleaner as for Sales*

```python
#first we clean discounts using cleaner
df2['Discounts']=df2['Discounts'].apply(cleaner)
```

*We can manually use value_counts() and add the values corresponding to 0.1, 0.5 and 0.6. We may also do the following*

```python
len(df2[ (df2['Discounts']==0.5) | (df2['Discounts']==0.1) | (df2['Discounts']==0.6)])
```
