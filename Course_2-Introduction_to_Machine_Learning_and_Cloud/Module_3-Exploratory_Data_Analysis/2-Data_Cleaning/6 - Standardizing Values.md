# Standardizing Values

You learnt about different techniques to handle outliers and also applied that learning on the 'bank marketing' dataset. Now, in this segment, you will learn about the next important aspect, which is to standardize the values in a data set.

In the forthcoming video, Anand will explain how to standardize the quantitative values in a data set.  

**VIDEO**  

Scaling ensures that the values in a data set have a common scale; this makes it easy to perform data analysis. Let us consider a data set that contains the grades of the students studying in different universities. Some universities assign grades on a scale of 4, whereas others assign grades on a scale of 10. Hence, you cannot assume that a GPA of 3 on a scale of 4 is equal to a GPA of 3 on a scale of 10, even though they are the same quantitatively. Thus, for the purpose of analysis, these values need to be brought to a common scale, such as the percentage scale.

Now, let us summarize what you learnt so far about standardizing the variables in a data set. Here is a list of the points that were covered. You can use this as a checklist for future data cleaning exercises:

- **Standardize units:**  Ensure all the observations under one variable are expressed in a common and consistent unit; for example, convert lbs to kg, miles/hour to km/h, etc.

- **Scale values if required:**  Make sure all the observations under one variable have a common scale

- **Standardize precision:**  Standardize the precision for a better presentation of data; for example, change 4.5312341 kg to 4.53 kg

So, now that you have learnt how to standardize the numerical values in a data set, you will next learn how to standardize text values, which is an equally important aspect of data analysis.  

**VIDEO**  

Let us summarize what you learnt about standardizing the text values in a data set. Here is a list of the points that were covered. You can use this as a checklist for future data cleaning exercises:

- Always remove extra characters, such as common prefixes/suffixes and leading/trailing/multiple spaces. These are irrelevant to the analysis.

- **Standardize case:**  String variables may take various casing styles, for example, FULLCAPS, lowercase, Title Case and Sentence case.

- **Standardize format:**  It is critical to standardize the format of other elements, such as date and name; for example, change 23/10/16 to 2016/10/23 and “Modi, Narendra” to “Narendra Modi”.

In the next video, Rahim will apply the concepts covered by this segment to the 'bank marketing' data set and standardize some required values in it.  

**VIDEO**  

#### Standardization

Qn: You have looked into the bank marketing data set. What is the type of “duration” variable in bank marketing data set? What kind of irregularity this “duration” variable has?  
Ans: _The 'duration' variable is basically an object type variable. But it has to be numeric type. There are data in the 'duration' variable in two formats, seconds and minutes. You need to convert it into a single scale, either in seconds or minutes._  

In the videos, you saw the application of standardization with a real-life example of the ‘duration’ variable in the 'bank marketing' data set. The duration variable has data in minutes as well as seconds; this has to be converted to minutes only. You can understand the entire code to convert the ‘duration’ variable into minutes by referring to this image.

![Code_Standardize_Duration_Explained](https://i.ibb.co/fYP2qJm/Code-Standardize-Duration-Explained.png)

Moving on, in the next segment, you will learn how to fix the invalid values in a data set.
