# Fixing the Rows and Columns

You learnt about some of the issues with raw data and understood the need for data cleaning. Now, we will begin this segment with the forthcoming video, where Anand will help you understand different cases of fixing the columns and rows of a given data set.  

**VIDEO**

#### MLAs

Qn: In a database “MLA” containing the details of MLAs throughout India, you have a city named Rampur in Himachal Pradesh, UP and Chhattisgarh. The city names are stored in the “City” column, while state names are stored in the “State” column. What is the best way to represent the cities in this case?

- Keeping the most relevant Rampur, removing the other two.
- Merging the City, State columns to get a unique identifier.
- Randomly choosing which Rampur to keep in the dataset, to make the dataset simpler.  

Ans: B, _The city and state columns need to be merged so that each city is uniquely identifiable for further analysis._  

Now, we will summarize your learning with the help of the checklists given below. Make sure you correctly identify these issues and resolve them before moving on to the next stage of data cleaning.

**Checklist for Fixing Rows**

- **Delete summary rows:**  Total and Subtotal rows    
- **Delete incorrect rows:**  Header row and footer row
- **Delete extra rows:**  Column number, indicators, blank rows, page number

**Checklist for Fixing Columns**

- If required, merge columns for creating unique identifiers; for example, merge the columns State and City into the column Full Address.
- **Split columns to get more data:**  Split the Address column to get the State and City columns, in order to analyse each separately.
- **Add column names:**  Add column names if missing.
- **Rename columns consistently:**  Abbreviations, encoded columns.
- **Delete columns:**  Delete unnecessary columns.
- **Align misaligned columns:**  The data set may have shifted columns, which you need to align correctly.

Now, in the next video, Rahim will show you how to fix the columns in the bank marketing dataset.  

**VIDEO**  

So, in the video, you saw that both the heading rows have been deleted, as they have no use in our analysis. It is very important to note here that if a glance of a data set then it is very essential to get rid of that at the very first process.

Now, in the next video, Rahim will show you how to fix the columns in our bank marketing dataset.

**VIDEO**  

#### Cleaning of columns

Qn: You have seen that Rahim has dropped the “customerid” column, as it is of no use. For dropping the column, the command inp0.drop(“customerid”, inplace= True) has been used. Can you explain what the purpose of inplace= True in this code? Pick the correct option.

- Use of inplace= True will return a new data frame without the 'customerid' column. It also drops the column in the original data frame, i.e., inp0.
- Use of inplace= True only returns a new data frame without the 'customerid' column.
- Use of inplace= True does not return any new data frame but is simply dropping the customerid column in original data frame i.e. inp0.
- None of the above.  

Ans: When **inplace = True** is used, it performs the operation on dataframe and nothing is returned. When **inplace=False** is used, it performs the operation on dataframe and returns a new copy of data.  

So, you have now learnt how to fix these columns:

- **Customerid:**  It has been dropped, as it has no specific use in the analysis.
- **Jobedu:**  It has been separated to extract job and education. Job and education have to be analysed separately. In further sessions, you will understand how education and job play very important roles in determining the customer segment that will respond positively to term deposits.
- **Month:**  Month name will be extracted in further segments based on missing value imputation analysis.

Moving on, in the next segment, you will learn how to handle the issue of missing values.  

#### Data Cleaning

Qn: What points should be kept in mind while handling the rows and columns for preparing the data for analysis and to fetch maximum information from it?

- Simply remove the columns if you find more than 20% of data in that column as missing. It may reduce the bulkiness of the data set and make it simple to analyse.
- Splitting a column into 2 or 3 columns increases the number of variables in the data set. However, one should remember that splitting is not preferred unless you get any unique information.
- In the bank marketing dataset, you can bucket the data according to age group, for example, <30, 30-40, 40-50, 50-60, >70, It may yield better insights about the responses based on age groups.
- It is important to have information about the variables or instances, for example, whether they have null values, blank values or invalid values.

Ans: B, C, D

- _Columns should be split to get more variables if that yields any unique and useful information. Like in our data set, jobedu can be split into job and education._  
- _Bucketing by age group may yield new insights about the perspective of different age groups._  
- _When you observe the dataset, it is necessary to look into the count of null values. You will learn more about it in further segments._
