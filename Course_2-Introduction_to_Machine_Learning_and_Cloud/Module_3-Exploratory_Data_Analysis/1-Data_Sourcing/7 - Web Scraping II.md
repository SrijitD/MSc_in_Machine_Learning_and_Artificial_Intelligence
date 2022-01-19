# Web Scraping-II

You have a very basic understanding of what an HTML page looks like. Now, in this segment, we will get to the application part, i.e., how you can fetch website data using Python.

In the forthcoming video, Rahim will help you understand the HTML page of an IMDb web page.

**VIDEO**  

#### Data Sourcing

Qn: Select the appropriate statements about a div tag in HTML page out of the 4 options given below. Multiple options may be correct.

- It is a class.
- It is a container type structure, which contains other HTML elements.
- It has a nested structure.
- There can not be another div inside a div.  

Ans: B & C. _Div is used to buckets things on the web page; it has a nested structure, which contains other HTML elements in it._ _It may contain other HTML tags like a, p, h, div, href or classes._

So, in the video, you saw the web page of the top 50 movies on IMDb. The page has movie names, ratings, votes, director details and cast in a very specific container-like structure. Now, we will get to the next part, where you will learn how to code in order to fetch data from a web page in Python. You will learn about this in the next video.  

**VIDEO**  

Here is a summary of the major takeaways from this video:

- **request library:**  It is a Python library that is used to read the data of a web page from the URL of that page.

- **BeautifulSoup:**  It is a class that is used to beautify the structure of HTML code so that the user can read it to get an idea about the HTML code syntax.

- The web scraping process can be divided into these four major parts:
1. **Reading:**  HTML page read and upload

2. **Parsing:**  Beautifying the HTML code in an understandable format

3. **Extraction:**  Extracting data from a web page

4. **Transformation:**  Converting the information into the required format, e.g., CSV

You are provided with the well-commented Jupyter notebook that has been covered in the video. This is just for your reference, and it is a very basic example of web scraping. There are many other techniques and concepts in web scraping, but they are out of the scope of this module. However, you have been given an idea about the process of web scraping with a basic understanding of HTML.

You have gone through the web page containing the top 50 movies on the IMDb website and saw the scraping process using Python. This page contains information on movies such as name, rating, votes, run time, genre, director details, actors and plot. As explained earlier, if you want to fetch information from a web page in a CSV file, then you need to look into the HTML code of the web page to get an idea about the tags and attributes.

Now, try to answer the following questions on the web scraping of the same IMDb top 50 movies web page.

#### Web Scraping

Qn: You already know that the HTML code has a nested structure. In the IMDB web page, there is a dedicated class which contains the genre of the movie. A dedicated class for the genre of the movie will be nested inside the other classes as well. Can you identify such classes which contain the genre of the movie in the HTML code of IMDB web page? Multiple options may be correct.

- text-muted
- genre
- lister-item-content
- lister-item mode-advanced  

Ans: All of the above.

- _This particular class itself contains the “genre” class; hence, the text-muted class contains the genre of the movie._
- _The “genre” class is a dedicated class to display the genre of the movie in HTML page; hence, it contains the genre of the movie._
- _The “lister-item-content” class contains all the information about the movie data and the genre class is nested inside the“lister-item-content” class; hence, this class contains the genre of the movie._
- _The “lister-item mode-advanced” is the class for one particular movie segment, which contains “lister-item-content” as well as image class; hence, it contains the genre of the movie._  

Qn: Suppose you want to fetch the little description of the movie “Fight Club” that is written just below the rating. What should be the correct code for that?

- A
    des = containers[0].findAll("p", {"class": "text-muted"})
    print(des.text)
- B
    des = containers[3].findAll("p", {"class": "text-muted"})    
    print(des[1].text)
- C
    des = containers[0].findAll("p", {"class": "text-muted"})    
    print(des [0].text)
- D 
    des = containers[4].findAll("p", {"class": "text-muted"})
    print(des[1].text)  

Ans: _Fight Club is at index value 3 and, hence, the index value of containers is correct. The description of the movie is at index value 1. Hence, it is the correct option._  

Qn: Suppose you want to fetch the votes for the movie “The Godfather”. What should be the correct code syntax for that?

- A
    votes= containers[10].findAll("span", {"name": "nv"})
    print(votes[0].text)
- B
    votes= containers[9].findAll("span", {"name": "nv"})
    print(votes[0].text)
- C
    votes= containers[10].findAll("span", {"name": "nv"})
    print(votes.text)
- D
    votes= containers[9].findAll("span", {"name": "nv"})
    print(votes.text)

Ans: B, _The Godfather” has an index value of 9 and the number of votes is contained at index value 0._
