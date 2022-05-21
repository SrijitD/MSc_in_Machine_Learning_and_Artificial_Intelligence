# Import Libraries and Tweets Formats

In the previous session, you learnt about the basic concepts of Spark Streaming. In this segment, you will learn how to get twitter data in real-time.

The process of performing real-time hashtags analysis can be divided into two parts:

1. Fetching real-time twitter data
2. Performing Hashtag analysis on the real-time data

You are expected to write the code by yourself in the Jupyter notebook provided below. This Jupyter notebook contains comments that will guide you in writing the code lines. Watch the following video and try to write the code on your own.

Download [Fetching_Twitter_Data](Fetching_Twitter_Data.ipynb)

Download [HashTags_Analysis](HashTags_Analysis.ipynb)

Before using the notebook, you need to create an EC2 machine with Java, Python, Spark and Jupyter Notebook installed in it. The end-to-end guide to install a notebook on EC2 is given in the previous modules.

Let’s go through the code for the first part of the process to fetch the real time twitter data from the twitter API.

You will use the **‘Fetching_Twitter_Data’** notebook for fetching the tweets. Also, you need to open a port in the inbound security group of your EC2 instance. This port can be anything like 7777, 7773 or 5555. Sajan has used 7777 in the demonstration.

![AWS EC2 Inbound Rules](https://i.ibb.co/VvhFSpB/AWS-ECC2-Inbound-Rules.png)

You can refer to the above image to set the inbound and outbound rules the port in Security Group of the EC2 machine. Here in this image port 7771 is opened.

**VIDEO**

In the first part of the video above, Sajan imported the following libraries to fetch the twitter real-time data:

- **tweepy**: This library is used to access the twitter API. You can also use tweepy to get tweets from timelines, post or delete tweets, or follow or unfollow users on twitter.
    Before importing this library, you need to install it in Python. The command to install tweepy is as follows:

    ```python
 ! pip3 install tweepy --user
 ```

- **OAuthHandler**: This instance helps in creating the authentication object which is passed into the Stream object using the keys generated from twitter developer account.

**VIDEO**

- **Stream**: A tweepy.Stream object establishes a streaming session and directs all the messages to a tweepy.StreamListener object. Here, the Stream object is _twitter_stream_data_ and messages are passed onto the _TweetsListener_ class of the StreamListener type.

    ```python
 def send_twitter_data(c_socket):
      auth = OAuthHandler(consumer_key, consumer_secret)
      auth.set_access_token(access_token, access_secret)
      twitter_stream_data = Stream(auth, TweetsListener(c_socket))
      twitter_stream_data.filter(track=['corona'])
 ```

- **StreamListener**: This is an object under the tweepy library, here present as the _TweetsListener_ class. There are different methods in a StreamListener object.  

    In the **init** method, it reads and sets the client address/ socket, _client_socket_ to which the tweets fetched from the _twitter_stream_data_ stream can be sent.

    ```python
 class TweetsListener(StreamListener):
      def __init__(self, csocket):
          self.client_socket = csocket
 ```

    The _on_data_ method receives all the messages and hence can call functions according to the type of the message. Here, it receives the json format of the tweets and prints the needed information. You also send the tweet's text data to the _client_socket_.

    ```python
    def on_data(self, tweet_json):
          try:
              tweet_data = json.loads( tweet_json )
              print("tweet_text: ", tweet_data['text'].encode('utf-8') )
              print("created_at: ", tweet_data['created_at'])  
              print("name: ", tweet_data['user']['name'])              
              print("location: ", tweet_data['user']['location'])
              print("\n")
              self.client_socket.send( tweet_data['text'].encode('utf-8') )
              return True
          except BaseException as e:
              print("Error on_data: %s" % str(e))
          return True
 ```

    The _on_error_ method is used to deal with any errors like if the stream gets disconnected etc.

    ```python
    def on_error(self, status):
          print(status)
          return True
 ```

- **Import JSON**: All the tweets extracted from the twitter API are in the JSON format. Hence, to read JSON format, you need to import this library.

    ```python
    tweet_data = json.loads( tweet_json )
 ```

- **Import socket**: Socket is used to connect two nodes on a network to communicate with each other. You shall learn more about this in the next segment.

You also saw that Sajan used four keys for authentication to connect to the twitter API. You can generate your own keys by creating a developer account at the following link:

[twitter Link](https://apps.twitter.com/)

You can refer to the following document to get your own keys from the twitter account.

The twitter community takes some time to generate the keys and hence, you have to wait for their reply but for now, we are providing you with the keys which are as follows:

Download [Twitter Keys](Twitter_Keys.pdf)

```python
consumer_key = 'cJxdE5SpqN6td3L34QjhqZF6j'
consumer_secret = '4D6nrOWIsAnfB4Eojiaw62K1oHR0WiR27hXu9U0nRMR00kFYXu'
access_token = '969589729527185408-HgwCsWXW5Y5DT5rLv6EaXWkfjY4Nqb0'
access_secret = '41CkS9c4d0CXSovhDipl5pDimgkBMsqmX7NeyAAI0kgQe'
```

But ultimately, you are expected to generate your own keys.

**Note**: While performing the whole twitter real-time analysis, you have to log in to your twitter account, otherwise, it will not perform the operations.

#### Spark Streaming

Qn: Match the libraries in the first column with their working features in the second:

![Spark Streaming Question](https://i.ibb.co/tX7BXZ3/Spark-Streaming-Question.png)

- A-I, B-II, C-III, D-IV

- A-II, B-I, C-IV, D-III

- A-I, B-III, C-II, D-IV

- A-III, B-I, C-IV, D-II

Ans: D.

In the next segment, you will learn how to fetch Tweets using socket creation and authentication.

## Additional Reading

1. You can refer to the tweepy documentation [here](http://docs.tweepy.org/en/latest/index.html).
