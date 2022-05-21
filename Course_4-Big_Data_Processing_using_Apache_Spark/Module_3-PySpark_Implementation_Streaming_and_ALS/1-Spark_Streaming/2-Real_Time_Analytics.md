# Real Time Analytics

Let’s start with the first case study on Spark Streaming. The word **Streaming** is itself deducible as something received by the end-user for continuous use.

Consider the example of Google’s self-driving cars. The car captures millions of images using high-resolution cameras and simultaneously sends this data for processing in order to make decisions, such as applying brakes, steering, etc., on a real-time basis.

The capturing and processing of the continuous stream of images, as well as making driving decisions, must occur in milliseconds, as even a slight delay can cause a serious accident. Here, real-time analytics plays a significant role in capturing data and simultaneously performing analyses on the data on a real-time basis.

Let’s hear from Sajan as he explains more about the real-time analytics (RTA) process.

**VIDEO**

So, you need to understand the following blocks in real-time analytics:

![Real Time Analytics](https://i.ibb.co/xLC5hTQ/Real-Time-Analytics.png)

- **Data sources:** The system receives real-time data from various data sources to perform analytics. For example, you can receive live Twitter data that includes people’s tweets and perform analytics on it to find trends in those tweets.  
    Another example of such a data source can be that of Ola, where the system updates the location of cabs on the application on a real-time basis so that customers can make bookings.
- **Real-time analytics (RTA):** This refers to the process of analysing data that is received from various sources without any delay and delivering the results in real-time.
- **Real-time dashboards and insights:** Once the analysis is performed on the data, the insights from the data are shown as visualisations on a real-time basis.  
    Suppose you are working in an e-commerce company, like Amazon, and want to view the total number of Samsung phones purchased every five seconds in a specific region, such as Mumbai. You wish to compare this number with the total purchase made in the last five seconds to understand if the targets can be met. Based on this comparison, you can develop your own dashboard to view real-time trends on a regional basis.

In the previous video, you learnt about RTA along with its features and application. In the upcoming video, you will be introduced to the various use cases of real-time analytics.

**VIDEO**

#### RTA Use Cases

Qn: Can you suggest some of the real-life examples of RTA based on your experiences and ideas?

Ans: *Self-driving cars, IoT applications, recommender system of YouTube, real-time cab booking system, real-time stock trades etc.*

As explained in the video, there are many use cases of real-time analytics. A few of them are given below:

- **Self-driving cars:** You have already understood how RTA helps in processing real-time data from high-resolution cameras in self-driving cars to make any driving decisions.
- **Social media trends:** You can analyse the top trending topics using real-time data and posts from users across the world. In fact, in the second case study, you will learn how to perform Twitter hashtag analysis on trending topics in real-time.
- **Recommendations:** Have you ever looked at the recommendations of movies and videos on Netflix and YouTube and wondered how they are similar to the ones that you have watched previously? These recommendation systems also work on real-time data that users provide directly or indirectly to these applications. For example, after you watch a movie and rate it according to your liking, these applications use this rating data to recommend the most appropriate movies or videos to you on a real-time basis.
- **IoT Sensors:** Many IoT devices need to synchronise with one another in order to generate the desired results in real-time. For example, electricity bills are generated using electric meters that record consumption in real-time

So far, you have learnt about Real-Time Analytics. In the next segment, you will learn about the basics of Spark that enable Real-Time Analytics.
