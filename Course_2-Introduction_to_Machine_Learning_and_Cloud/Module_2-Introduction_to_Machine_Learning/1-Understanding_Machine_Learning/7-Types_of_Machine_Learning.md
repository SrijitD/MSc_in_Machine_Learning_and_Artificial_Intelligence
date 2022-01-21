# Types of Machine learning

So far, you have learnt a lot about machine learning and how it relates to big data and the cloud. In this segment, let’s formally define machine learning and also look at the broad classifications of machine learning.

Machine learning can be defined as follows:

“**A computer program is said to learn from experience E with respect to some class of tasks T and performance measure P, if its performance at tasks in T, as measured by P, improves with experience E.**”

- _Tom Mitchell_

Let’s look at the video below to understand this better:

**VIDEO**

With this understanding of machine learning, let's now look at the broad categorization of machine learning algorithms:

**VIDEO**

Machine learning algorithms can be classified into two types:

![Machine_Learning_Algorithms_1](https://i.ibb.co/XygL58R/Machine-Learning-Algorithms-1.png)

Supervised learning is where the model learns from past data, which consists of pairs made up of inputs and the corresponding output. The algorithm learns based on this data. On the other hand, unsupervised learning is where the model takes in data that is not labelled, i.e., the output is not mentioned, and acts on it without any guidance.

If you wanted to predict the future value of a stock based on its historical performance, it would be termed supervised learning because it is based on earlier experiences. Another case is where you categorize things by feeding some information and images to the system, for example, the animals in a particular set of images are dogs and those in another set of images are cats. This is supervised learning as well because here you are defining something and the algorithm learns based on this provided data.

In the example of categorizing cats and dogs, let’s say you are not told anything about the images but are asked to group them together. First, you start looking at the nose, eyes, ears and other features and start grouping similar images together. So, unlike earlier, here you do not have any labelled data. What you have is unlabelled data, and learning happens based on the patterns discovered in this unlabelled data. This is unsupervised learning.

Here's an image that neatly summarizes the difference between supervised and unsupervised learning that you saw in the above examples:

![Supervised_Unsupervised_Learning](https://i.ibb.co/r6pMJm8/Supervised-Unsupervised-Learning.jpg)

Now, supervised and unsupervised learning are the two most common types of machine learning. There are other types of machine learning algorithms as well; let’s look at them in our next video:

**VIDEO**

With this understanding of machine learning and its types, try to attempt the questions given below.

Question 1/3

Mandatory

#### Machine Learning

Qn: Visit  [this page](https://experiments.withgoogle.com/kluster), read the description of the experiment at the bottom of the page, and then launch it. This experiment requires you to upload an image. The program creates groups based on the pixel values of the image and shows the pixels in the form of stars in a galaxy. Is the experiment an example of machine learning?  

Ans: In the experiment, using the pixels of an image, a star system is created in such a way that similar pixels form groups. This is a classic example of machine learning, where the system understands the features of a particular image and then forms a 3D star system based on these learned features.

#### Supervised and Unsupervised Learning

Qn: [Visit this page](https://experiments.withgoogle.com/drum-machine)  read the description of the experiment at the bottom of the page, and then launch it. Determine whether the experiment is an instance of supervised learning or unsupervised learning.

Ans:  The description at the bottom of the page mentions that they built this model based on the similarities between different sounds and grouped them. Therefore, it is unsupervised learning as the model works on its own without the help of past training data.

Qn: [Visit this link](https://experiments.withgoogle.com/giorgio-cam) read the description of the experiment at the bottom of the page, and then launch it. Determine whether the experiment demonstrates supervised or unsupervised learning.

Ans: Supervised Learning - As this experiment uses the image-recognition methodology, i.e., given an image, the model predicts the label of the image, it is a supervised learning experiment. Here, the label of the image is predicted by the model based on past images and their respective labels. You can find a more detailed explanation at [aiexperiments-giorgio-cam](https://github.com/googlecreativelab/aiexperiments-giorgio-cam) in the README section.
