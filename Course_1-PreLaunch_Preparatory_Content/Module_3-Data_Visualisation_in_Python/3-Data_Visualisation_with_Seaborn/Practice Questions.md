# Practice Questions

Please download the following zip folder before you start. The folder contains a notebook which you will use to code and find answers to the questions asked and also data files for both the set of questions below.

## Part I

You will use the Footwear_v2.csv file for this set of questions. The given dataset contains the profits generated(in %) by all the suppliers of a footwear company in 4 major cities of India - Delhi, Mumbai, Jaipur and Hyderabad. The company wants to invest more money in the city that is showing promising results. Analyse the dataset and answer the following questions.

#### Average

Qn: The absolute difference in the average profit percentages of Delhi and Mumbai comes out to be approximately ____  

- 1.67

- 1.57

- 1.77

- 1.47

Ans: C. *Check that the values are in object type due to the % symbol. So you need to clean the columns first. Use the replace() function to do it. Once it is done, apply a describe on dataframe.*

```python
def clean(string):
    clean="".join(filter(lambda x: x!='%', string))
    return float(clean)
df['Mumbai']=df['Mumbai'].apply(clean)
df['Delhi']=df['Delhi'].apply(clean)
df['Jaipur']=df['Jaipur'].apply(clean)
df['Hyderabad']=df['Hyderabad'].apply(clean)
df.describe()
```

*This yields the mean values of profits for Mumbai and Delhi which are 4.55 and 6.32 respectively whose absolute difference is approx. 1.77*

#### Invest More

Qn: Which city amongst the four should the company invest more money in?

- Delhi

- Mumbai

- Jaipur

- Hyderabad

Ans: C. *First comparing the means you can see that Jaipur and Hyderabad have nearly the highest average profits. Then the box plot suggests that the 25th-75th percentile for Jaipur lies between 7-9 whereas it is 6-9 for Hyderabad. Since Jaipur has higher number of values in a smaller and more profitable region, it is the better choice here.*

*Running the belo code gives us the boxplot*

```python
sub_df=df[['Delhi', 'Mumbai', 'Jaipur', 'Hyderabad']]
sub_df.boxplot()
```

## Part II

The dataset for this question is in the folder crypto_data. The data for each cryptocurrency is in a separate csv file. The datasets contain the prices of some popular cryptocurrencies such as bitcoin, litecoin, ethereum, monero, neo, quantum and ripple. Now, you would like to know how the prices of these currencies vary with each other.

The datasets containing their price values over several days is mentioned. The attributes are as follows:

- Date - The date of trading
- Open - Opening Price
- High - Highest Price
- Low - Lowest Price
- Close - Closing Price
- Volume - Total Volume
- Market Cap- Market Capitalisation

Please note that you will be using column "Close" of all crypto-currencies to answer the following questions.

#### Correct Statements

Qn: Combine all the datasets by merging on the date column and create a dataframe with only the closing prices for all the currencies. Next, create a pair plot with all these columns and choose the correct statements from the given ones:

**I-**There is a good trend between litecoin and monero, one increases as the other  
**II-** There is a weak trend between bitcoin and neo.  
 

- I

- II

- Both I and II

- None of the above

Ans: A. *Combine the datasets with pd.merge function and make sure you only keep the closing prices for analysis. Plotting a pair plot and comparing the currencies we see that both the pairs show good trend between them, one increases as the other and vice versa.*

#### Heatmap

Qn: As mentioned earlier, HeatMaps are predominantly utilised for analysing Correlation Matrix. A high positive correlation (values near 1) means a good positive trend - if one increases, then the other also increases. A negative correlation on the other hand(values near -1) indicate good negative trend - if one increases, then the other decreases. A value near 0 indicates no correlation, as in one variable doesn’t affect the other. 

- Ethereum and Quantum have a high correlation.

- Neo and Bitcoin have pretty low correlation

- Ethereum has a similar correlation with litecoin and neo

Ans: A. *Make sure that you’ve plotted the heatmaps correctly and annotated the values. After that the insights are apparent.*

Make sure that you’ve plotted the heatmaps correctly and annotated the values. After that the insights are apparent.
