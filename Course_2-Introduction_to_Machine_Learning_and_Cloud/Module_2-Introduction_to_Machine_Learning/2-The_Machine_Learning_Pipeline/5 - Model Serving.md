# Model Serving

The model built in the previous step now needs to be served or taken to the end user. In the next phase - model serving - you will look at the different ways in which this is done.

**Video**

Model serving involves the following steps:

- Exposing the built models as application programming interfaces (APIs).  **An API is a software construct that facilitates communication between two components by defining the format of input and output messages.** If a software engineer wants to use the ML model, they need to call the API in a predefined format.
  
  - For example, let’s say for a particular food delivery application, you built a model to predict the ETA of the delivery agent. Now, you need to put this model back into the application so that the end-user can benefit from it. The tech stack under which the website is built can be JavaScript, and the machine learning model can be constructed entirely in Python or PySpark. For the application to communicate with the model, you expose the model as an API.

- Once this application of the machine learning model is made, the next step involves moving the code from the local/development environment to the staging/production environment. A key aspect is you need to create a similar environment as the development environment. This can be achieved using the technique of containerization.

- The last step is performance testing, where you simulate similar real-time scenarios. For example, a website with regular traffic of 100 users per minute may suddenly see a surge to 1,000 users per minute during a sale. Performance testing involves simulating such unexpected loads and checking metrics such as response time and concurrency.

The image below best summarizes the concepts learned in this segment. (Please hover on the image for the zoom-in option)

![Model_Serving](https://i.ibb.co/YLKjYp1/Model-Serving.png)
