# Web Scraping-I

The  [IMDb](https://www.imdb.com/?ref_=nv_home)  website provides movie-related information, such as  **release date**,  **run time duration**,  **cast**,  **genre**,  **ratings**. Now, consider a  [specific webpage](https://www.imdb.com/search/title/?sort=num_votes,desc&start=1&title_type=feature&year=1950,2012)  on the IMDb website that lists the top-rated movies, along with information about the movies. It lists the top 50 rated movies, the number of votes, etc. But what if you want to perform a deeper analysis to answer certain questions such as these?

- Which director has the highest number of movies among the top 50 rated ones?
- Which genre has the highest rating in the top 50 rated movies?
- What is the gross expenditure of the lowest-rated movies as compared with the highest-rated ones?

One approach to answering such questions is manual, which is just to check the information manually and enter it in a spreadsheet. But wouldn’t this be a tedious and mundane task? This is where the technique of web scraping comes into the picture. It eases the task of obtaining and processing data in a structured format. This will help you perform deeper analyses and answer the questions given above.

Web scraping helps with fetching such information from websites. You will learn about web scraping in three parts:

- The need for and the application of web scraping
- The basics of an HTML page
- Python libraries and codes for web scraping

In the forthcoming video, you will hear from Rahim as he talks about how useful web scraping is.  

**VIDEO**  

So, in the video, Rahim helped you get an idea about how web scraping is useful for price comparison for e-commerce companies. It is also useful for tracking the stock market to determine the right time to buy or sell shares. Web scraping may also be helpful for real estate purposes, for example, to get the right property at a suitable price in the right location, and so on.

You can refer to this  [website](http://www.3idatascraping.com/data-scraping-use-cases.php)  to get an idea about the practical need of web scraping.

**Note**:

Please note that web scraping is not always legal for all websites. Certain websites provide others with access to scrape their data from the web pages. Another important aspect is that if the content is copyrighted (for example, video, pictures and articles), then it is not illegal to scrape it, but it is illegal to re-publish it. Also, you cannot scrape a website just to build a duplicate competing site. It is acceptable to scrape data as long as you are using it to create something new.

**Basics of an HTML Page**

The basic requirement of web scraping is the web page that you are going to scrape, and any web page is written in HTML. You can perform web scraping using Python only after you understand the basic structure of an HTML page.

So, you will now learn about the basics of how an HTML page looks and what its tags are.

**Note:** We will not provide an end-to-end understanding of HTML codes here. You will learn only those concepts that are useful for fetching data from a web page in the scraping process.

HTML stands for **‘Hyper Text Markup Language’**. It is used to create electronic documents to display them on the World Wide Web. Each page that you see on the internet is written in HTML.

You can learn about the basics of HTML by examining the [Wikipedia  page on  machine learning](https://en.wikipedia.org/wiki/Machine_learning), for example.

You can see the HTML code of any webpage by following the instructions given below:

**Open web page -> Right click -> Click on Inspect**

![Machine_Learning_Wiki_1](https://i.ibb.co/cy51cm7/Machine-Learning-Wiki-1.png)

Once you click on ‘Inspect’, you will see the HTML code of that page on the right side of the screen, as shown in this image.

![Machine_Learning_Wiki_2](https://i.ibb.co/NmTpCKV/Machine-Learning-Wiki-2.png)

HTML code has a tree-like  **hierarchical structure**  or a **nested structure**, which contains a **Head**  and a **Body**. The web page that you see on the screen is due to the ‘body’, which contains most of the important codes for that web page.

An HTML page broadly consists of these two basic elements:

- **Attributes:**  They are used to describe the characteristics of an element. They majorly contain **class**,  **id**  and  **href**. Attributes are like the objects that are created to define the different segments of a web page.
- **Tags:**  A tag is a way to represent an HTML element. Tags majorly contain **h (heading)**,  **p (paragraph)**,  **a (hyperlink)** and  **div**.

Now, we will briefly go through the  **attributes** one by one using the Wikipedia page examples.

- **class:**  The class attribute of HTML is used to specify a single or multiple class names for an HTML element.
- **id:**  This attribute is used to provide a specific Id to an element.
- **href:**  This attribute is used to provide a web page link, which is embedded inside a text on the HTML page.

A group of elements may have the same attributes but will have different tags. We will next go through the different **tags**, taking the help of the Wikipedia page examples to understand the concepts better.

- **Heading:** It is represented by ‘h’ in HTML code. It is used to place the section headings in a web page.

![Machine_Learning_Wiki_3](https://i.ibb.co/0MMQTtQ/Machine-Learning-Wiki-3.png)

- **Paragraph:** It is represented by ‘p’ in HTML code. It is used to place a paragraph in a web page.

![Machine_Learning_Wiki_4](https://i.ibb.co/VHbj6kD/Machine-Learning-Wiki-4.png)

- **Hyperlink:** It is represented by ‘a’ in HTML code. It is used to provide a link to any other web page on the present web page.

![Machine_Learning_Wiki_5](https://i.ibb.co/bmkctGP/Machine-Learning-Wiki-5.png)

- **div:** It is used to structure the HTML page. It is a nested structure, which contains other HTML elements. The main purpose of the div tag is to promote encapsulation.

![Machine_Learning_Wiki_6](https://i.ibb.co/180SpXY/Machine-Learning-Wiki-6.png)

- **span:** This tag is used for grouping and applying styles to inline elements.

So, that was the basic information required to understand the structure of an HTML page. We will not be covering HTML codes in depth.

Now, try answering the following questions on HTML basics.

Question 1/2

Mandatory

#### HTML Basics

Qn: This is a snapshot of the Wikipedia page of Machine Learning. Choose the correct option for the highlighted part in the image. You can find the link to this page  [here](https://en.wikipedia.org/wiki/Machine_learning).

![Machine_Learning_Wiki_Qn_1](https://i.ibb.co/9VqsLM2/Machine-Learning-Wiki-Qn-1.png)

- It is a Hyperlink tag.
- It is a Heading tag.  

Ans: It is a Hyperlink tag. _As it is a link to some other web page, it is a hyperlink tag._  

#### HTML basics

Qn: Choose the correct class name of the heading in the Wikipedia page on **Machine Learning**. You can find the link to this page  [here](https://en.wikipedia.org/wiki/Machine_learning).  

- mw-headline
- firstHeading  

Ans: firstHeading. _This class represents the first heading of the webpage, i.e., Machine Learning._
