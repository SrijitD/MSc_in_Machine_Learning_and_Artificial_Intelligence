# Uber Supply Demand Gap

**Introduction**

This is a masked dataset that is similar to what data analysts at Uber handle. Solving this assignment will give you an idea about how problems are systematically solved using data visualisation.

**Business Understanding**

You may have some experience of travelling to and from the airport. Have you ever used Uber or any other cab service for this travel? Did you, at any time, face the problem of cancellation by the driver or non-availability of cars?

Well, if these are the problems faced by customers, these very issues also impact the business of Uber. If drivers cancel the request of riders or if cars are unavailable, Uber loses out on its revenue.

As an analyst, you decide to address the problem that Uber is facing, i.e., driver cancellation and non-availability of cars, which is leading to loss of potential revenue.

**Business Objectives**

The aim of the analysis is to identify the root cause of the problem (i.e., cancellation and non-availability of cars). This translates to finding the peak time periods when these problems are happening, and that is what you will be doing here.

**Data Understanding**

There are six attributes associated with each request made by a customer as mentioned below.

- Request id: A unique identifier of the request
- Time of request: The date and time at which the customer made the trip request
- Drop-off time: The drop-off date and time in case the trip was completed
- Pick-up point: The point from which the request was made
- Driver id: The unique identification number of the driver
- Status of the request: The final status of the trip, which can be either completed or cancelled by the driver, or there are no cars available

The data contains information about all the trips from the airport to the city, and vice versa.

**Additional Resources**

You have already gone through the [pd.to_datetime()](https://pandas.pydata.org/pandas-docs/stable/reference/api/pandas.to_datetime.html) function earlier. Do go through the documentation once again, as you might find it quite useful in solving the following problem.

**Instructions**

Download the Notebook from the link given below and use it to solve the following questions.

#### Null Values

Qn: Which columns have null values and how many?

- Request id - 2650 Driver id - 3914

- Request id-   3914 Driver id - 2650

- Driver id - 2650 Drop time stamp - 3914

- There are no null values in the dataset.

Ans: C. *You can manually run isnull().sum() on all columns or use the following code to automate this*

`print (df.isnull().sum())`

#### Choose Correct

Qn: Select the correct statements from the options given below. (More than one may be correct)

- We need to delete the records containing the null values as they won’t be useful for our analysis.

- Only the records containing null values in the Driver id need to be eliminated.

- There are a total of 1264 requests which have a status of “cancelled”

- We need to keep the records containing null values for both the columns and using them analyse the problems faced by Uber.

Ans: C & D.

- *Use value_counts() on Status column*
  
  `df['Status'].value_counts()`

- *The null values in the records are expected since they would indicate that either no cars were available(null in Driver id) or cancellations(null in Drop timestamp).*

#### Busy hour

Qn: Now that you have understood the significance of the null values in this case study, the next step would involve fixing the Request Time-Stamp and Drop-Time Stamp columns. Go ahead and convert it into a date-time object. After that report back the hour in which the most number of requests are being made.  

- 18:00-19:00

- 16:00-17:00

- 14:00-15:00

- 13:00-14:00

- 19:00-20:00

Ans: A. *Use the pd.to_datetime() function to convert the given time stamps to a date-time object.*

```python
df['Request timestamp']=pd.to_datetime(df['Request timestamp'])
df['Drop timestamp']=pd.to_datetime(df['Drop timestamp'])
```

*After that use dt.hour to extract the hour and store it in a new column of the same dataframe df. Then do a value_counts() and you’ll find that at 18:00-19:00 hours the maximum number of requests were made (510).*

```python
df['Request hour']=df['Request timestamp'].apply(lambda x: x.hour)
df['Request hour'].value_counts()
```

#### Cancelled Dates

Qn: Next, extract the date from the request timestamp and find the date when the most number of trips were cancelled.  

- 2016-07-13

- 2016-11-07

- 2016-07-14

- 2016-07-15

- 2016-12-07

Ans: A. *There are two ways to do this, one is to use dt.day and dt.month to find the day and month and do value_counts()*

```python
df['Request hour']=df['Request timestamp'].apply(lambda x: str(x.day)+'/'+str(x.month))
df[df['Status']=='Cancelled']['Request hour'].value_counts()
```

*Or simply use the date() function under DateTime library*

```python
df['Request date']=df['Request timestamp'].apply(lambda x: x.date())
df[df['Status']=='Cancelled']['Request hour'].value_counts()
```

#### Correct Statements II

Qn: Choose the correct statements from the ones given below.

(More than one may be correct)

- In general, the five hour time period in which the most number of trips are completed is approximately 5-10.  

- Across all the days, the number of trips from the City that get cancelled is nearly 9 times less than the trips when there were no cars available.  

- Across all the days, the number of trips from the Airport that get cancelled is comparable to the number of trips when there were no cars available.  

- The number of trips getting completed from City is higher than the trips completed from the airport.  

Ans: A & D.

- You can do this by checking value_counts() of the 'Request hour' that you found earlier. We can then simply sum in groups of 5
  
  ```python
  Q5a=df[df['Status']=='Trip Completed']['Request hour'].value_counts().sort_index()
  for i in range(24):
      Q5a[i]=sum(Q5a[i:i+5])
  ```

- The first value can be found by taking len() of completed trips and pickup point as city
  
  ```python
  len(df[(df['Pickup point']=='City') & (df['Status']=='Trip Completed')])
  ```
  
  And the second value similarly by
  
  ```python
  len(df[(df['Pickup point']=='Airport') & (df['Status']=='Trip Completed')])
  ```
  
  The comparison can show that the option is correct.

#### Request time

Qn: Once you’ve analysed requests for all the days at an aggregate level, it’s time to find patterns in individual days and see if there is anything common across the days. Analyse the distribution of requests across all the days and choose the correct option.  

- The most number of requests are obtained only in the morning hours across all the days.

- The most number of requests are obtained only in the evening hours across all the days.

**✕ Incorrect**

**Feedback:**

The best way to do this is with the help of visualisation. Which view do you need to check the distribution of hours here?

- The most number of requests are obtained both in the morning as well as the evening hours across all the days.

**✓ Correct**

**Feedback:**

- None of these

Ans: C. *The best way to do this is to use a histogram or a distplot to plot the distribution of the Request hour column. You’ll be getting the frequency for each hour’s occurrence, which is also the number of requests obtained in that hour. Use a for- loop to create the plots for all the days. Once it is done, it is clearly observed that the most number of requests are obtained in the morning as well as the evening.*

```python
#best way to do this is to plot the histograms for all dates
#we first get the unique dates 
unique_dates=df['Request date'].unique()
#and now use a for loop to plot the histogram on 'Request hour'
for i in unique_dates:
    #we will use 24 bins, one bin for each hour
    sns.distplot(df[df["Request date"]==i]['Request hour'], bins=24)
    plt.title(str(i))
    plt.show()
```

#### Request time II

Qn: Now that you’ve observed that the number of requests across all the days is similar, you need to check it across the pick-up points as well. Analyse the distribution of requests across each of the pick-up points exclusively and choose the correct option:

- The majority of requests from City are obtained during evening hours.

- The majority of requests from Airport are obtained during morning hours.

- The majority of requests from City are obtained during morning hours.

- Both a) and b)

Ans: C. *Continuing from the previous distribution plots, just add a qualifier of Pickup point and plot those distributions again for both City and Airport. You’ll observe that the majority of requests obtained from Airport is during the evening hours and the majority of requests obtained from City is during the morning hours.*

*For 'City' as the pickup point*

```python
for i in unique_dates:
    sns.distplot(df[(df["Request date"]==i) & (df['Pickup point']=='City')]['Request hour'], bins=24)
    plt.title(str(i))
    plt.show()
```

*and for 'Airport' as the pickup point*

```python
for i in unique_dates:
    sns.distplot(df[(df["Request date"]==i) & (df['Pickup point']=='Airport')]['Request hour'], bins=24)
    plt.title(str(i))
    plt.show()
```

#### Request time III

Qn: Now that you have realised the patterns of requests coming from both the city and the airport, the next step is to divide the entire time period to certain slots and then analyse them using plots. Use the following classification table to create the slots and then choose the correct option.

| Hour Range (x) | Time Slot     |
| -------------- | ------------- |
| x < 5          | Early Morning |
| 5 <= x < 10    | Morning       |
| 10 <= x < 17   | Day time      |
| 17 <= x < 22   | Evening       |
| 22 <= x        | Late Night    |

- The maximum number of requests across all the days happens in the Evening.

- The minimum number of requests across all the days happens in Early Morning.

- The minimum number of requests across all the days happens in Late Night.

- Both a) and c)

Ans: D. *Use a function with an if-else loop containing the classifications mentioned above. Use the Lambda function to apply it on all the values in the Request hour column. This gives you the Time Slot for each request. Using a value_counts() on the time slot gives you the number of requests made at each time period: highest - Evening(2342), lowest - Late Night(498).*

```python
def time_period(x):
    #divide the time of the day into five categories
    if x < 5:
        return "Early Morning"
    elif 5 <= x < 10:
        return "Morning"
    elif 10 <= x < 17:
        return "Day Time"
    elif 17 <= x < 22:
        return "Evenning"
    else:
        return "Late Night"

#use this function on the request hour to create Time slot 
df['Time slot'] = df['Request hour'].apply(lambda x: time_period(x))
#and now simply use value_counts()
df['Time slot'].value_counts()
```

#### Bar

Qn: After this, you decide to plot a bar plot with the time slots in the X-axis and the number of requests in the Y-axis and observe the Status of trips for each time slot. This way you’ll get the number of trip request across each time slot and their status as well.

To make things easier, you created an additional column called ‘Count’ whose value is fixed at 1 for all the rows(df["Count"]=1). Then in order to create a bar plot as mentioned in the first statement, you decided to use sns.barplot() function.

What are the parameters that you need to take here?  

- Take time slots as x and Count as y.

- Take the Status as hue and df as the data.

- Both (a) and (b).

- The parameters mentioned above are insufficient.

Ans: D. *The sns.barplot by default calculates the mean of the y variable being chosen. Therefore, you need to change it to sum by taking another parameter- estimator = np.sum.*

#### Correct Bar

Qn: Once you have created the bar plot correctly, what major issues are you able to observe? Choose the correct options amongst the following-  

- A majority of requests in the evening are having a “No cars available” status.

- The major issue in the morning slot is that it has a lot of cancellations.

- Both (a) and (b).

- None of the above.

Ans: C. *Plotting the barplot in the previous question can be plotted as*

```python
df['Count']=1

#we will have to change the estimated as sum, since by default the barplot takes the mean
sns.barplot(data = df, x = 'Time slot', y='Count', hue= 'Status',estimator = np.sum)
```

*The insights are obvious then.*

#### Demand Supply

Qn: Now that you’ve understood the major issues in the morning and the evening time slots, it’s time to compute the demand and supply gap. Here,

Demand - Number of Requests Uber Gets  
Supply - Number of Requests Uber is able to fulfil

Demand supply gap = Demand - Supply.

Compute the demand-supply gap for both the morning and the evening slots for the Pick-up points having the most number of requests in that time_slot  

- Morning - 1205 Evening - 1427

- Morning - 1427 Evening - 1205

- Morning - 1249 Evening - 1558

- Morning - 1558 Evening - 1249

Ans: A. *We create a pivot table with values as 'Count' and aggfunc as np.sum. We create this pivot table for both pickup points 'City' and 'Airport'.*

```python
demandsupply_City=pd.pivot_table(df[df['Pickup point']=='City'], values='Count', index='Time slot', columns ='Status', aggfunc=np.sum)
demandsupply_Airport=pd.pivot_table(df[df['Pickup point']=='Airport'], values='Count', index='Time slot', columns ='Status', aggfunc=np.sum)
```

*After that, we simply add a new column 'Gap' and add values in 'Cancelled' and 'No cars available'*

```python
demandsupply_City=pd.pivot_table(df[df['Pickup point']=='City'], values='Count', index='Time slot', columns ='Status', aggfunc=np.sum)
demandsupply_Airport=pd.pivot_table(df[df['Pickup point']=='Airport'], values='Count', index='Time slot', columns ='Status', aggfunc=np.sum)
```

*check both the pivot tables and then choose the correct option.*
