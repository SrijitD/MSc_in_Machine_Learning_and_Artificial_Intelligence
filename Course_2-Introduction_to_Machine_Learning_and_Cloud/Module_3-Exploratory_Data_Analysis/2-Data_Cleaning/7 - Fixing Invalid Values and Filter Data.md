# Fixing Invalid Values and Filter Data

In the previous segments, you learnt about the concepts to deal with different types of irregularities in a data set. You also went through the bank marketing dataset, wherein you saw the practical aspect of all the concepts covered. Now, data sets also have some other irregularities, which you need to get rid of. Although our bank marketing dataset does not have irregularities of these types, it is essential to deal with them as well.

In the forthcoming video, you will learn about fixing the invalid values in a data set.  

**VIDEO**  

If your data set has invalid values, and if you do not know which accurate values could replace those invalid values, then it is recommended that you treat these values as missing. For example, if the Contacts columns in a data set contain the string ‘tr8ml’, then it is recommended that you remove the invalid value and treat it as a missing value.

Now, let us summarize what you learnt about fixing the invalid values in a data set. Here is a list of the points that were covered. You could use this as a checklist for future data cleaning exercises:

- **Encode unicode properly:**  In case the data is being read as junk characters, try to change the encoding; for example, use CP1252 instead of UTF-8.

- **Convert incorrect data types:**  Change the incorrect data types to the correct data types for ease of analysis. For example, if the numerical values are stored as strings, then it would not be possible to calculate metrics such as mean and median. Some common data type corrections include changing a string to a number (“12,300” to “12300”), a string to a date (“2013-Aug” to “2013/08”), a number to a string (“PIN Code 110001” to “110001”), and so on.

- **Correct the values that lie beyond the range:**  If some values lie beyond the logical range, for example, if temperature is less than -273℃ (0 K), then you would need to correct those values as required. A close look at the data set would help you determine whether there is a scope for correction or whether the value needs to be removed.

- **Correct the values that do not belong to a list:**  Remove the values that do not belong to a list. For example, in a data set of the blood groups of individuals, the strings ‘E’ or ‘F’ are invalid values and can be removed.

- **Fix incorrect structure:**  Values that do not follow a defined structure can be removed from a data set. For example, in a data set containing the pin codes of Indian cities, a pin code of 12 digits would be an invalid value and would need to be removed. Similarly, a phone number of 12 digits would be an invalid value.

- **Validate internal rules**: Internal rules, if present, should be correct and consistent. For example, the date of a product’s delivery should definitely come after the date of purchase.

After you have fixed the missing values, standardized the existing values and corrected the invalid values in a data set, you would arrive at the last stage of data cleaning. Although you would have a largely accurate data set by now, you may not need all of it for your analysis. It is important for you to understand what you require in order to draw insights from the data, and then choose relevant parts of the data set for your analysis. Thus, you need to filter the data in order to get what you require for your analysis.

In the next video, Anand will walk you through the different steps in filtering data.

**VIDEO**  

Now, let us summarize what you learnt about filtering data. Here is a list of the points that were covered. You could use this as a checklist for future data cleaning exercises:

- **Deduplicate data:**  Remove identical rows and rows in which some columns are identical

- **Filter rows:**  Filter rows by segment and date period to obtain only rows relevant to the analysis

- **Filter columns:**  Filter columns relevant to the analysis

- **Aggregate data:**  Group by the required keys and aggregate the rest
