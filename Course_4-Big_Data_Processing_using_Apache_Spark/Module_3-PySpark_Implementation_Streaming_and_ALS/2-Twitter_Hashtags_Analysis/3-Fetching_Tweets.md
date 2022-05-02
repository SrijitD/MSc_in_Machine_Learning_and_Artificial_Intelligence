# Fetching Tweets

In the previous segment, you learnt how to import the required libraries, how a tweet looks like in the JSON format and how the tweepy library help in creating a streaming object. 

In the next video, you’ll understand the authentication and socket creation process.

**VIDEO**

You have already seen the code snippet in the previous segment.

```python
def send_twitter_data(c_socket):
  auth = OAuthHandler(consumer_key, consumer_secret)
  auth.set_access_token(access_token, access_secret)
  twitter_stream_data = Stream(auth, TweetsListener(c_socket))
  twitter_stream_data.filter(track=['corona'])
```

In the first two lines of the above code, Sajan has done the authentication using four keys. _twitter_stream_data_ creates a streaming session from twitter. You can also filter the tweets received from the session. Hence, in the last step, the tweets are filtered to get those that contain the word ‘corona’.

So, ultimately, you are going to send this stream of data and create a DStream of these tweets which contains the word corona when you create a Spark session. You'll see this shortly.

In the above video, you came across the word ‘socket’ several times. Let's try to understand the same using the following code snippet.

```python
# Create a socket object
s = socket.socket()

# Get local machine name
host = "127.0.0.1"

# Reserve a port for your service.
port = 7777

# Bind to the port
s.bind((host, port))

# print
print("Listening on port: %s" % str(port))
```

In the first line, you are creating a socket object, _s_. A socket object helps in making different system calls. Here, we are going to use the socket object, s to run the Spark streaming job.

`s.bind((host, port))` binds the address ("127.0.0.1", 7777) to the socket, s. 

Now, when you execute this,

`s.listen(5)`

the socket, s is actually waiting to connect to a client. Here, the client is going to be a Spark streaming job which you'll see in the next couple of segments.

When you run the following cell,

`c, addr = s.accept()`

until the socket _s_ gets connected to the Spark Streaming job, it'll not be able to assign the values for _c, addr_ and hence, will keep running. You'll see an asterisk in the cell until then. The Spark streaming job is executed in another notebook, 'Hashtag_analysis_commented.ipynb'  and hence until you execute that notebook, all the cells below this cell will be on wait.

So, let's summarise the steps involved in this notebook:

1.  You create a _socket_, _s_ to connect to the Spark Streaming job.
2.  The socket is waiting to accept a connection from the Spark Streaming job.
3.  When the connection is established, the variable _c_, (which has the destination port, that is the port of the Spark Streaming job) is passed on to _send_twitter_data(c)_.
4.  This, in turn, triggers the class _TwitterListener()_, which is of the type _StreamListener_.
5.  Inside _TwitterListener()_, you do the following:
    1.  Assign _c_ to the _client_socket_.
    2.  Send the _tweet_text_ received within the tweepy stream, _twitter_stream_data_ to the _client_socket,_ which is _c_.
6.  Finally, you filter the stream, _twitter_stream_data_ on the word _'corona'._

**In this way, you are establishing the input for the Spark Streaming job, streaming data from Twitter.**

In the next video, you will see how real-time Tweets will be posted to the client port.

**Please note** that, in the demonstration, Sajan has already run the other notebook, the Spark Streaming notebook, [Hashtag_analysis_commented.ipynb](HashTags_Analysis.ipynb) and hence, you are able to see the output.

**VIDEO**

By executing send_twitter_data(), you can see the structure in which the tweets are printed. Remember that this structure was defined in the TweetListener() class.

In the next segment, you will perform the Hashtag analysis on these real-time Tweets.