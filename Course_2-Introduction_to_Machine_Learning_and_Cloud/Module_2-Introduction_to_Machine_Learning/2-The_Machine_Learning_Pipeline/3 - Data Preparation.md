# Data Preparation

Once you have the necessary data stored at a particular location, the next step is to get the data into the right format. Put simply, let’s say you are cooking a dish:

1. The first step is obtaining all the raw materials necessary for the dish
2. The next step is preparing the raw materials before making the dish.

In the same way that the final flavour of the dish depends on how you cut and slice your ingredients, preparing your data preparation is a critical step of building a machine learning solution.

Let’s hear about this phase from our industry expert :

**VIDEO**

Data preparation is the process of organizing or structuring an unprocessed dataset so that it can be used for analysis. The first and foremost step in data preparation includes exploring the dataset.  

During the exploratory phase, two aspects are stressed upon:

1. **Data consistency**: This involves checking whether the data is consistent throughout the dataset or not. For example, a customer’s transaction data collected across different countries need to follow a specific format before being able to be analysed for insights.
2. **Data Integrity**: You need to check whether the features in the dataset have permissible values or not. For example, let’s say the age column has values higher than 200, which means there is definitely a particular discrepancy in the dataset. So, you are expected to correct/modify it to make it usable for analysis.

Once these checks are performed, and specific issues in the dataset such as missing values, outliers and incorrect values are identified, the next step is to rectify them. You may have learnt some of these steps in the earlier modules. Let’s have a quick summary of those steps in the video below:

**VIDEO**

Data cleaning involves handling missing values and outlier values in the dataset. First, you check whether the missing values are at random places across the entire dataset or limited to a part of the dataset with specific properties. Once you have identified this, you may simply discard that particular part of the dataset or choose any of the following methods to impute those values:

1. Mean/median/mode imputation
2. Random sample imputation
3. Replacement by an arbitrary value
4. Missing value indicator
5. Multivariate imputation

Once the necessary data cleaning is performed, the next step would be to create new features which best represent the data. This process is known as feature engineering. Let's hear from the industry expert more about this.

**VIDEO**

Feature engineering is the process of using domain knowledge of the data to create features that can increase the predictive power of machine learning algorithms. For example, consider retail store data that has columns for customer name, product, amount and time of transaction. From this dataset, you can create new features, such as:

- **Recency**: Measuring how recently the customer visited the store or made a purchase
- **Frequency**: Measuring the frequency of the transactions made by the customers
- **Monetary**: Measuring how much the customer spent on his/her purchases

A few techniques to create new features include

1. Indicator variables
2. Interaction features
3. Binning: a new feature representing a range of values
4. Variable transformation: the log of a variable
5. Custom features: to convert text data to numerical data
   - Word2Vec
   - TF-IDF
   - Count vectorizer
   - n-grams

The image below best summarizes the concepts learned in this segment. (Please hover on the image for the zoom-in option)

![Data_Preparation](https://i.ibb.co/7YTswGz/Data-Preparation.png)

Now answer the following questions:  

#### Data Cleaning

Qn: It is always appropriate to replace a missing value in the data with a measure of central tendency (mean/median/mode) of that corresponding attribute. True or false?  
Ans: False - Replacing a missing value with a measure of central tendency is one of the most common approaches to handle missing values. It isn’t always appropriate because there might be a situation where it is necessary to perform other forms of imputation as well.  

Qn: #### Data Understanding

A critical part of data understanding is exploring the data by plotting charts. What type of insights can you expect to draw through plots? (Select all that apply.)

- Spotting outlier values
- Observing trends of variables (e.g. increasing/decreasing).
- Observing the correlation between variables
- Building predictive models

Ans:  

- Graphs such as scatter plots and box plots can show you outlier values and the distribution of data.
- Simple scatter plots or line plots can help you figure out trends, something you may not figure out by looking at rows of data.
- You can plot multiple variables against each other or against another variable and see how both the variables are related.  

**Additional Links**

- [RFM Segmentation](https://towardsdatascience.com/ecom-data-cooler-series-what-is-rfm-segmentation-8c4d6c2c0fc0)
