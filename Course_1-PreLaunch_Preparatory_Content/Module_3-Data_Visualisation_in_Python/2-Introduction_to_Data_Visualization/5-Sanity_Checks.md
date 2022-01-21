# Sanity Checks

**“I became insane, with long intervals of horrible sanity.” - EA Poe**

Once you’ve completed the basic data cleaning and data handling tasks, the next step is to ensure that the data that is available with us ‘makes sense’. What it means is that the data needs to be factually correct apart from being of the correct data type.

For example, on a test where you can score between 0 and 100, it is not possible for a student to score 110 marks*. Therefore, if such discrepancies occur in a data set, then you need to take care of them accordingly. So, in order to quickly check whether the data in the columns is rational and makes sense, you need to perform the so-called sanity checks.

**VIDEO**

As you saw in the video, three essential sanity checks were performed on the data:

- Rating is between 1 and 5 for all the apps.
- Number of Reviews is less than or equal to the number of Installs.
- Free Apps shouldn’t have a price greater than 0.

The first and third conditions were satisfied, whereas the second condition was not satisfied with some records. When you inspected those records, you realised that those apps were likely junk apps and therefore you should ideally remove those records. As mentioned, you are free to apply sanity checks to the dataset on your own as long as they’re logically sound.

**Additional Notes:**

- *You will not be awarded extra marks for good handwriting :-)
- If you’re familiar with competitive coding on sites like **HackerRank** or coding on online consoles in general, then you must have come across the notion of testing out the outputs of edge cases for any given problem to check the correctness of your code. This is one example of performing sanity checks on your code. In fact, sanity checks are used quite extensively in the world of programming and software testing to test a code’s logic, environment configuration and so on.
