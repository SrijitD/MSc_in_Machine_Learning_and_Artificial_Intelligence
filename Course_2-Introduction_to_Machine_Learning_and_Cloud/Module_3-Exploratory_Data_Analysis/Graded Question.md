# Graded Questions

Suppose you are working as an analyst at an e-commerce company. You are given these two data sets, which consist of details of women’s apparel sold the last year:

- **Dress Attribute Dataset:**  This data set contains the different features of the women’s apparel.
- **Dress Sales Dataset:**  This data set contains the number of sales for a particular dress ID on a particular date.

Let’s take a look at the first data set in Dress Attribute Dataset.  

This data set contains a total of 13 dress-related features. These are mentioned below:

1. **Dress_ID:**  It represents the ID number of a particular dress. It is a unique identification number for different dresses.

2. **Style:**  It represents the style of a particular dress according to the occasion, for example, a party or a vintage event.

3. **Price:** Each dress ID can fall in a particular price bucket, which can be low, medium or high.

4. **Rating:**  It is the average rating given by the customers to a particular dress ID.

5. **Size:** The size column represents the majority of the size bought by the customers for that particular dress ID in the previous sale.

6. **Season:**  It represents the season in which a particular type of dress is suitable, for example, summer, winter.

7. **Neckline:**  It contains information about the type of neckline on a dress, for example, V-neck and round-neck.

8. **SleeveLength:** It represents the type of sleeves on a dress, for example, half sleeves, full sleeves, cap sleeves.

9. **Material:** It contains information about which material a dress is made of, for example, cotton, nylon, polyester and silk.

10. **FabricType:** It contains information about the type of fabric of a dress, for example, chiffon, broadcloth, jersey.

11. **Decoration:**  It represents the type of decoration on a dress, for example, ruffles, bow and embroidery.

12. **PatternType:**  It represents the type of patterns that a particular dress has. Patterns may be solid colours, geometric designs, printed or patchwork.

13. **Recommendation:**  It is the target variable. ‘Recommendation’ is based on the features and sales of a dress in the previous year. It is either 1 (which means yes) or 0 (which means no). It shows whether a particular dress is suitable for sale to the customers.

Now, let’s take a look at the second data set.

You can download the Dress Sales Dataset from this link.

This data set represents the number of sales for a particular dress ID on a certain date. Here, the columns represent the dates on which a particular dress ID was sold.

On the basis of the two data sets above, you are expected to perform EDA and draw meaningful insights. Based on the EDA analysis, answer the graded questions for this module.

In the previous segments, we discussed the data cleaning part with the example of a bank marketing dataset. Now, answer the following questions based on your learning from this session.

You are provided with a blank Jupyter notebook with all the comments to perform the operations.

#### Data Types

Qn: Suppose you have the 'Attribute Dataset' that contains a column named 'Price'. Choose the correct option for its data type and variable type from those given below.

- Integer type and numerical variable
- Object type and categorical ordinal variable
- Object type and categorical nominal variable
- Float type and categorical variable

Ans: B, _It is the categorical type with a specific order in it; hence, it is an ordinal type of data._  

Qn: There is another column in the 'Attribute Dataset' named 'Recommendation'; choose the correct statement for its data type and variable type from those given below.

- Integer type and categorical
- Object type and categorical
- Integer type and continuous numerical
- Object type only

Ans: _It is an integer type and has categories in it, such as 1 and 0. You can check its type using the following code.

    inp0.Recommendation.value_counts()

Qn: According to you, which of the following columns is of no use in the 'Attribute Dataset'?

- Dress_ID
- Price
- Size and material
- NeckLine
- None of the above

Ans: All the columns mentioned above are equally important with regard to the dataset.

#### Fixing Rows and Columns

Qn: As you can see, there is a column in the Attribute Dataset named 'Size’. This column contains the values in an abbreviated format. Write a code in Python to convert the following:

- M into “Medium”
- L into “Large”
- XL into “Extra large”
- Free into “Free”
- S, s and small into “Small”

Once you are done with the changes in the dataset, calculate the value of the lowest percentage, the highest percentage and the percentage of 'Small' size categories in the column named 'Size', respectively.

- 7.5%, 2.9%, 35.7%
- 2.9%, 35.7%, 7.5%
- 7.5%, 35.7%, 2.9%
- 2.9%, 7.5%, 35.7%

Ans: B, _You should code to convert the values as mentioned in the question and then count the percentages of the categories using value_counts(). You can refer to the following code to perform this operation._

Convert the abbreviations of size into words.

    inp0.Size= inp0.Size.replace(['S', 'small', 's'], "Small")
    
    inp0.Size= inp0.Size.replace('free', "Free")
    
    inp0.Size= inp0.Size.replace('M', "Medium")
    
    inp0.Size= inp0.Size.replace('L', "Large") 
    
    inp0.Size= inp0.Size.replace('XL', "Extra large")

The code to find the percentage of each category in the ‘Size’ column is given below.

    inp0.Size.value_counts(normalize=True)

#### Impute/Remove Missing Values

Qn: You are given another dataset named 'Dress Sales Dataset'. Now, if you observe the data types of the columns using the ‘inp1.info()’ command, you will see that there are certain columns defined as object data type, although they primarily consist of numeric data.  
Now, if you try and convert these object data type columns into numeric data type (float), you will come across an error message. From the options given below, choose the correct option with the reason for the error and also how to remove this error.

- The error occurred because there are some blank entries in such columns, and when you convert these null values into float, it shows the error message. To remove this error, you need to remove the null values from the dataset.
- The error occurred because there are string entries in such columns. You should replace these string values with null values and then convert them into float type.
- The error occurred because object type cannot be converted into float type. This error cannot be removed, and you have to deal with the object data types in such columns.

Ans: B, _Because there is a string value in each of these columns, an error occurs. You cannot convert a string into float type, and once you replace a string with a null value, you will be able to convert it into float type._

You can convert the string values into null values using the following code.

    inp1.loc[inp1['09-12-2013']== 'Removed',"09-12-2013"] = np.NaN
    inp1.loc[inp1['14-09-2013']== 'removed',"14-09-2013"] = np.NaN
    inp1.loc[inp1['16-09-2013']== 'removed',"16-09-2013"] = np.NaN  
    inp1.loc[inp1['18-09-2013']== 'removed',"18-09-2013"] = np.NaN    
    inp1.loc[inp1['20-09-2013']== 'removed',"20-09-2013"] = np.NaN    
    inp1.loc[inp1['22-09-2013']== 'Orders',"22-09-2013"] = np.NaN

#### Handling Missing Values

Qn: When you observe the null counts in the 'Dress Sales Dataset' after performing all the operations that have been mentioned in the Jupyter Notebook, you will find that there are some columns in the 'Dress Sales' dataset where the number of missing values is more than 40%. Based on your understanding of dealing with missing values, select the most appropriate statement from those given below, with the reason.

- You should impute such missing values with the mean or median of column data.
- You should remove these columns because they have a huge number of missing values. Moreover, if you see, the number of sales (numerical values) in such columns is not high as compared with other Date columns. Hence, it is safe to remove such columns.
- You should create a separate category named 'missing' for such blank entries in such columns.

Ans: B, _The huge number of missing values in such columns is one of the criteria, but another major criterion is that these dates have minuscule sales values, and it is safe to remove them. You can refer to the following code to perform this operation._

    inp1= inp1.drop(["26-09-2013"] , axis= 1)
    inp1= inp1.drop(["30-09-2013"] , axis= 1)
    inp1= inp1.drop(["10-02-2013"] , axis= 1)
    inp1= inp1.drop(["10-04-2013"] , axis= 1)
    inp1= inp1.drop(["10-08-2013"] , axis= 1)
    inp1= inp1.drop(["10-10-2013"] , axis= 1)

Qn: You need to categorise the dates into seasons in the 'Dress Sales Dataset' data to simplify the analysis according to the following criteria:

- June, July and August: Summer

- September, October and November: Autumn

- December, January and February: Winter

- March, April and May: Spring

Which of the seasons has the lowest sales among all the seasons, and what is its value?

- Spring, 135343
- Spring, 143600
- Autumn, 135343
- Autumn, 143600

Ans: Write the code to club the dates into seasons according to the criteria and then find the sum of each season in 'Dress Sales Dataset'. You can refer to the following code to perform such an operation:

    inp1['Spring'] = inp1.apply(lambda x: x['09-04-2013'], axis=1)
    inp1['Summer'] = inp1.apply(lambda x: x['29-08-2013'] + x['31-08-2013']+ x['09-06-2013']+ x['09-08-2013']+ x['10-06-2013'], axis=1)
    inp1['Winter'] = inp1.apply(lambda x: x['09-02-2013'] + x['09-12-2013']+ x['10-12-2013'], axis=1)
    inp1['Autumn'] = inp1.apply(lambda x: x['09-10-2013'] + x['14-09-2013']+ x['16-09-2013']+ x['18-09-2013']+ x['20-09-2013']+ x['22-09-2013']+ x['24-09-2013']+ x['28-09-2013'], axis=1)

Qn: You can see that there are two types of variables: One with a large number of missing values and another with a less number of missing values. These two columns can be categorised as follows:

1. **Type-1**: Missing values are extremely less (around 2 or 3 missing values):  **Price, Season, NeckLine, SleeveLength, Winter and Autumn**
2. **Type-2**: Missing values are large in number (more than 15%):  **Material, FabricType, Decoration and Pattern Type**

Based on your understanding, which is the best method to deal with the missing values in the Type-1 and Type-2 columns?

- The missing values of both types of columns can be dropped.
- You should create a separate category named **Missing category**  in both types of columns to deal with missing values.
- You should create a separate category named **Missing category**  in the Type-2 columns and simply drop the missing values of the Type-1 columns.

Ans: This is the best way to deal with missing values. You can refer to the following code:

_Drop the missing values of the Type-1 columns as shown below:_

    inp0 = inp0[~inp0.Price.isnull()]
    inp0 = inp0[~inp0.Season.isnull()]
    inp0 = inp0[~inp0.NeckLine.isnull()]
    inp0 = inp0[~inp0.SleeveLength.isnull()]
    inp0 = inp0[~inp0.Winter.isnull()]
    inp0 = inp0[~inp0.Autumn.isnull()]

_Create a separate category named ‘Missing’ in the Type-2 column as shown below:_

    inp0.Material= inp0.Material.replace(np.nan, "Missing")
    inp0.FabricType= inp0.FabricType.replace(np.nan, "Missing")
    inp0.Decoration= inp0.Decoration.replace(np.nan, "Missing")
    inp0['Pattern Type']= inp0['Pattern Type'].replace(np.nan, "Missing")

#### Standardizing Values

Qn: In the given dataset, there are certain discrepancies with the categorical names, such as irregular spellings. Choose the correct option of columns with irregular categories and update them.

- Rating
- Price
- Style
- Season and SleeveLength

Ans: D, The Season and SleeveLength columns contain some spelling mistakes in the categorical names, which need to be rectified. You can refer to the following code to perform this operation:

Correct the season spelling as follows:

    inp0.Season = inp0.Season.replace('Automn', "Autumn")
    inp0.Season = inp0.Season.replace('spring', "Spring")
    inp0.Season = inp0.Season.replace('winter', "Winter")

Correct the SleeveLength:

    inp0.SleeveLength = inp0.SleeveLength.replace(['cap-sleeves', 'capsleeves'], "cap sleeves")    
    inp0.SleeveLength = inp0.SleeveLength.replace('full', "full sleeves")    
    inp0.SleeveLength = inp0.SleeveLength.replace(['half','halfsleeve'], "half sleeves")    
    inp0.SleeveLength = inp0.SleeveLength.replace(['sleevless', 'sleeevless', 'sleeveless', 'sleveless'], "sleeve less")
    inp0.SleeveLength = inp0.SleeveLength.replace(['threequarter','threequater', 'thressqatar'], "three quater")
    inp0.SleeveLength = inp0.SleeveLength.replace(['turndowncollor','urndowncollor'], "turn down collar")

#### Categorical Unordered Univariate Analysis

Qn: In the ‘Dress Attribute Dataset’, there is a column named ‘Style’, which contains the different style categories of women's apparel. Certain categories whose total sales is less than 50,000 across all the seasons are grouped under a single category named ‘Others’.   
Which of the following categories under the ‘Style’ column can be grouped in the ‘Others’ category? Perform the grouping operation in the Notebook for further analysis. Note: More than one option can be correct.   

- Flare, Fashion
- Novelty, Bohemian
- OL, Fashion, Work
- Novelty, Fashion

Ans: Use the groupby and sum commands to find the categories in the 'Style' column that have sales values less than 50,000 across all the seasons. You can refer to the following code to perform such operations:

_Convert the Style categories as shown below:_

    inp0_style_grouped=inp0.groupby(['Style'])['Spring','Winter','Autumn', 'Summer'].sum()
    inp0_style_grouped.sum(axis = 1)

_Find the categories that have sales values less than 50,000 across all the seasons as shown below:_

    inp0_style_grouped[inp0_style_grouped.sum(axis= 1)<50000]

_Group the Style categories that have sales values less than 50,000 across all the seasons under ‘Others’ as shown below:_

    inp0.replace(inp0_style_grouped[inp0_style_grouped.sum(axis=1)<50000].index, 'Others', inplace=True)

Qn: What is the respective percentage of the 'Cute' and 'Others' categories in the 'Style' column in the 'Attribute Dataset'?

- 46%, 5%
- 9%, 2.1%
- 2.1%, 5%
- 13.8%, 9%

Ans: B

    print(inp0.Style.value_counts(normalize=True))
    inp0.Style.value_counts(normalize=True).plot.barh()
    plt.show()

#### Categorical Ordered Univariate Analysis

Qn: Which of the following is an unordered variable in the 'Attribute Dataset'?

- Style
- Price
- Season
- Size

Ans: _The 'Style' category contains the types of styles available, and it is an unordered type._

#### Numerical Variable Univariate Analysis

Qn: What is the approximate difference between the maximum value and the 75th percentile in the 'Autumn' column?

- 54,000
- 55,000
- 52,000
- 50,000

Ans: 52,000. This is the difference between the maximum value and the 75th percentile.   
Plot a box plot and describe these variables using the following code:

    inp0.Autumn.describe()
    sns.boxplot(inp0.Autumn)
    plt.show()

#### Numerical Variable Univariate Analysis

Qn: Which of the following seasons shows the highest difference between the maximum value and the 99th quantile of sales?

- Winter
- Summer
- Spring
- Autumn

Ans: Autumn. Correct. The difference between the maximum value and the 99th quantile of sales in Autumn is 31,398, which is the highest on the list. You can use the following code to find the difference between the maximum value and the 99th quantile of sales in Autumn:

    inp0.Autumn.quantile([0.99, 1])

Similarly, you can find the difference between the maximum value and the 99th quantile of sales in spring, summer and winter and you will find that in autumn this difference is highest.   

#### Numerical - Categorical Bivariate Analysis

Qn: Which of the following categories of the 'Price' column has the lowest average rating?

- Very High
- Medium
- Low
- High

Ans: D. _This category in the Price column has the lowest average rating._

    print(inp0.groupby('Price')['Rating'].mean())

Qn: What is the median value of rating for the 'vintage' category in the 'Style' column?

- 4.6
- 4.7
- 4.55
- 0.00

Ans: A. _This is the median value of rating for the 'vintage' category in the 'Style' column._

    print(inp0.groupby('Style')['Rating'].median())

Qn: Which of the following season shows the highest average value of sales(in number) for the 'Recommendation' value equals that to 1?    

Note: Here 'Season' column isn't the column to be used. Instead, the four columns created during the previous exercise corresponding to sales in each season should be considered.

- Summer
- Spring
- Autumn
- Winter

Ans: C. _Find out the mean and median values of the total sales in autumn with the 'Recommendation' variable. The mean of sales in the 'Autumn' column for the recommendation value equals 1 is approximately 2,870, which is the highest. You can refer to the following code to answer the question:_

    print(inp0.groupby('Recommendation')['Autumn'].mean())
    sns.boxplot(data=inp0, x="Recommendation",y="Autumn")
    plt.show()

#### Categorical - Categorical Bivariate Analysis

Qn: Which of the following size categories has the most positive recommendations?

- Medium and Extra Large
- Extra Large and Small
- Free and Small
- Free and Medium    

Ans: D. _Write a code to plot the bar graph of the average recommendation corresponding to the 'Size' column in the notebook provided._

    inp0.groupby(['Size'])['Recommendation'].mean().plot.barh()
    inp0.groupby('Size')['Recommendation'].sum()

#### Multivariate Analysis

Qn: Which of the following pairs of 'Style' and 'Price' categories has the highest average of positive recommendations?

- Price: medium, style: vintage
- Price: medium, style: cute
- Price: very high, style: party
- Price: low, style: sexy

Ans: B. _Plot the heat map of Style, Price and Recommendation. The average value for this combination is 1, which is the maximum across all the values. You can refer to the code given below._

    res = pd.pivot_table(data=inp0, index="Style", columns="Price", values="Recommendation")    
    sns.heatmap(res, cmap="RdYlGn", annot=True, center=0.427)
    plt.show()

Qn: Which of the following material types has no recommendation in the summer and winter seasons?

- Mixed and Milksilk
- Nylon and Rayon
- Microfiber and Silk
- Milksilk and Microfiber

Ans: D. _This combination does not have any recommendation in winter or summer._

    res = pd.pivot_table(data=inp0, index="Material", columns="Season", values="Recommendation")
    sns.heatmap(res, cmap="RdYlGn", annot=True, center=0.427)
    plt.show()

> 
