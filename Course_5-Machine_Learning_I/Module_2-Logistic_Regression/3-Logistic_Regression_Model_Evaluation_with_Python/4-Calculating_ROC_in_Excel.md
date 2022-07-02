# Calculating ROC in Excel

So far, you have learnt about some evaluation metrics and understood why they are important in evaluating a logistic regression model. Now, recall that the sensitivity that you got **(~53.768%)** was quite low and clearly needs to be dealt with. But what was the cause of such low sensitivity in the first place?

If you remember, when you assigned 0s and 1s to the customers after building the model, you arbitrarily chose a cut-off of **0.5,** wherein if the probability of churning for a customer was greater than 0.5, you classified them as a 'Churn' and if the probability of churning for a customer was less than 0.5, you classified them as a 'Non-churn'. 

Now, this cut-off was chosen at random. So it might not be the ideal cut-off point for classification, which is why we might be getting such a low sensitivity value. Now, how do you find the ideal cut-off point? Let's start by watching the next video. For a more intuitive understanding, this part has been demonstrated in Excel. You can download the Excel file from below and follow along with the lecture.

Download [ROC Curve - Excel Demo](ROC_Curve_Excel_Demo.xlsx)

**VIDEO**

In this video, you saw that the predicted labels depend entirely on the cut-off or the threshold that you have chosen. For low values of threshold, you would have a higher number of customers predicted as 1 (Churn). This is because if the threshold is low, it means that everything above that threshold would be 1 and everything below that threshold would be 0. Naturally, a lower cut-off would mean a higher number of customers being identified as 'Churn'. Similarly, for high values of threshold, you would have a higher number of customers predicted as 0 (Not Churn) and a lower number of customers predicted as 1 (Churn).

Now, let's move forward with our discussion on how to choose an optimal threshold point. For that, you would first need to learn a few basic terms (some of which you came across in earlier sections.). Watch the next video to find out more.

**VIDEO**

In this video, you learnt the following two terms:

### True Positive Rate (TPR)

This value gives you the number of positives correctly predicted divided by the total number of positives. Its formula as shown in the video is as follows:
$$\large True\ Positive\ Rate (TPR)=\normalsize\dfrac{True\ Positives}{Total\ Number\ of\ Actual\ Positives}$$
Now, recall the labels in the confusion matrix.

![Confusion Matrix Highlighting the Total Number of Actual Positives](https://i.ibb.co/GTc3Fzw/Confusion-Matrix-Highlighting-the-Total-Number-of-Actual-Positives.png)

As you can see, the highlighted portion shows the row containing the total number of actual positives. Therefore, the denominator term in the formula for TPR is nothing but the following:

$$\large Total\ Number\ of\ Actual\ Positives=True\ Positives+False\ Negatives$$

So, the formula for True Positive Rate (TPR) becomes:

$$\large True\ Positive\ Rate\ (TPR)=\dfrac{True\ Positives}{True\ Positives+False\ Negatives}=\dfrac{TP}{TP+FN}$$

As you might remember, the formula given above is nothing but the formula for **sensitivity**. Hence, the term True Positive Rate that you just learnt about is nothing but sensitivity.

The second term that you learnt was as follows:

### False Positive Rate (FPR)

This term gives you the number of false positives (0s predicted as 1s) divided by the total number of negatives. The formula for the same is as follows:

$$\large False\ Positive\ Rate\ (FPR)=\normalsize\dfrac{False\ Positives}{Total\ Number\ of\ Actual\ Negatives}$$

Again, using the confusion matrix, you can easily see that the denominator here is nothing but the first row. Hence, it can be written as follows:

$$\large Total\ Number\ of\ Actual\ Negatives=True\ Negatives+False\ Positives$$

Therefore, the formula now becomes:

$$\large False\ Positive\ Rate\ (FPR)=\normalsize\dfrac{False\ Positives}{Total\ Number\ of\ Actual\ Negatives}=\dfrac{FP}{TN+FP}$$

Again, if you recall the formula for specificity, it is given by: 

$$Specificity=\dfrac{TN}{TN+FP}$$

Therefore, you can see that the formula for False Positive Rate (FPR) is nothing but **(1 - Specificity)**. You can easily verify it yourself.

#### TPR and FPR

Qn: Given the following confusion matrix, calculate the values of the True Positive Rate (TPR) and the False Positive Rate (FPR).

| **Actual/Predicted** | **Not Churn** | **Churn** |
| -------------------- | ------------- | --------- |
| Not Churn            | 300           | 200       |
| Churn                | 100           | 400       |

- TPR = 40%; FPR = 80%

- TPR = 40%; FPR = 60%

- TPR = 80%; FPR = 40%

- TPR = 60%; FPR = 40%

Ans: C. Recall that the formulas for TPR and FPR were as follows: $TPR=\dfrac{TP}{TP+FN}$ and $FPR=\dfrac{FP}{FP+TN}$. Here, TP = 400; FN = 100; FP = 200; TN = 300. Hence, you get - $TPR=\dfrac{400}{400+100}=80\%$ and $FPR=\dfrac{200}{200+300}=40\%$

#### True Positive Rate

Qn: You have the following table showcasing the actual 'Churn' labels and the predicted probabilities for five customers.

| **Customer** | **Churn** | **Predicted Churn Probability** |
| ------------ | --------- | ------------------------------- |
| Thulasi      | 1         | 0.52                            |
| Aditi        | 0         | 0.56                            |
| Jaideep      | 1         | 0.78                            |
| Ashok        | 0         | 0.45                            |
| Amulya       | 0         | 0.22                            |

Calculate the True Positive Rate and the False Positive Rate for the cut-offs of 0.4 and 0.5. Which of these cutoffs will give you a better model?

**Note:** A good model is one in which the TPR is high and the FPR is low.

- Cut-off of 0.4

- Cutoff of 0.5

- Both are the same

Ans: B. *Now, at the cutoff of 0.4, you get the following values of predicted probabilities:* 

| Customer | Churn | Predicted Churn Probability | Predicted Churn Label |
| -------- | ----- | --------------------------- | --------------------- |
| Thulasi  | 1     | 0.52                        | 1                     |
| Aditi    | 0     | 0.56                        | 1                     |
| Jaideep  | 1     | 0.78                        | 1                     |
| Ashok    | 0     | 0.45                        | 1                     |
| Amulya   | 0     | 0.22                        | 0                     |

*From this table, you can easily calculate the following:*

*True Positives = 2*

*False Positives = 2*

*Also, from the original table, you have the following:*

*Actual Positives = 2*

*Actual Negatives = 3*

*Hence, you get:*

$TPR=\dfrac{True\ Positives}{Total\ Actual\ Positives}=\dfrac{2}{2}=100\%$

$FPR=\dfrac{False\ Positives}{Total\ Actual\ Negatives}=\dfrac{2}{3}\approx67\%$

Performing similar steps for a cut-off of 0.5 will give you the following values:

$TPR=100\%$

$*FPR\approx33\%*$

(Do calculate it yourself to verify.)

*As you can see, with both the cutoffs, the TPR is 100%, but for a cut-off 0f 0.5, you have a lower value of FPR. So clearly, a cut-off of 0.5 gives you a better model. Please note that 0.5 just gives a better model between 0.4 and 0.5. It is possible that there is a cut-off point that gives an even better model.*

Now that you have understood what these terms are, you will learn about **ROC (Receiver Operating Characteristic) curves,** which show the **trade-off between the True Positive Rate (TPR) and the False Positive Rate (FPR)**. And as was established from the formulas given above, TPR and FPR are nothing but sensitivity and (1 - specificity). So, you can also look at the trade-off between TPR and FPR as the tradeoff between sensitivity and specificity. 

**VIDEO**

You can clearly see that there is **a trade-off between the True Positive Rate and the False Positive Rate, or simply, a trade-off between sensitivity and (1-specificity)**. When you plot the True Positive Rate against the False Positive Rate, you get a graph that shows the trade-off between them. This curve is known as the ROC curve. The image given below shows the ROC curve that you plotted in Excel.

![ROC Curve](https://cdn.upgrad.com/UpGrad/temp/0f78b536-c97d-49d8-a603-0f3e00e32abf/ROC+Excel.PNG)

As you can see, for higher values of TPR, you will also have higher values of FPR, which might not be good. So, it is all about finding a balance between these two metrics, and that is what the ROC curve helps you find. You also learnt that a good ROC curve is one that touches the upper-left corner of the graph; so, the higher the area under the curve of an ROC curve, the better your model is.

You will learn more about ROC curves in the coming segments, but first, attempt the following questions.

#### Changing the Threshold

Qn: You initially chose a threshold of 0.5, wherein a churn probability of greater than 0.5 would result in the customer being identified as 'Churn' and a churn probability of lesser than 0.5 would result in the customer being identified as 'Not Churn'. 

Now, suppose you decreased the threshold to a value of 0.3. What would its effect on the classification be?

- More customers would now be classified as 'Churn'.

- More customers would now be classified as 'Not Churn'.

- The number of customers in both classes would remain unchanged.

- Cannot be determined based on this information

Ans: A. *Since you have decreased the cut-off to 0.3, it would mean that:*

- *Customers with a churn probability > 0.3 would be identified as 'Churn', and*

- *Customers with a churn probability < 0.3 would be identified as 'Not Churn'.* 

*Initially, the threshold was 0.5. Look at the customers in the 0.3-0.5 probability range. They were identified as 'Not Churn' before but are now identified as 'Churn'. Naturally, the number of people being identified as 'Churn' would increase.*

#### TPR and FPR

Qn: Fill in the blank. When the value of TPR increases, the value of FPR \_\_\_\_\_.

- increases

- decreases

- remains the same

Ans: A. *This can be clearly seen from the ROC curve as well. When the value of TPR (on the Y-axis) increases, the value of FPR (on the X-axis) also increases.*

#### Area Under the Curve

Qn: You have the following five AUCs (area under the curve) for ROCs plotted for five different models. Which of these models is the best?

| **Model** | **AUC** |
| --------- | ------- |
| A         | 0.54    |
| B         | 0.82    |
| C         | 0.79    |
| D         | 0.66    |
| E         | 0.56    |

- A

- B

- C

- D

- E

Ans: B. *Recall that when the ROC curve is more towards the top-left corner of the graph, the model is deemed to be more accurate. Hence, a greater area under the curve would mean the model is more accurate. Of the five models, B has the highest AUC and, hence, is the most accurate model. Also, note that the highest value of AUC can be 1.*

## Coming up

Now that you are familiar with the concept of an ROC curve, in the next segment, you will learn how to plot an ROC curve in Python
