# Minimising the Log Loss Function

In the previous segment, you saw the parameters of the logistic regression model can be found out by minimising the log loss function using gradient descent optimization. The log loss function is defined as follows:
$$\hat{L}(y;p)=−\frac{1}{n}\sum^n_{i=0}\left[y_ilog(p_i)+(1−y_i)log(1−p_i)\right]$$
To minimise the log loss, we will need the derivate of the sigmoid. Therefore, it will be helpful if you find the derivative of the sigmoid (denoted by σ in the video) beforehand, as during the minimisation of the log loss function, you will just need to substitute it. This will help avoid a lot of complications. Let’s see how the derivative of the sigmoid function can be found out. 

**VIDEO**

**Note**: At 1.29 in the video, the SME says "Let us say that we add and subtract one from the denominator". He misspoke, he meant to add and subtract one from the numerator. 

In this video, you saw Jaidev calculate the derivative of the sigmoid function. The same derivation is given below for your reference.

The sigmoid function is given by $\sigma_x=\dfrac{1}{1+e^{−x}}$.

Let the denominator of the sigmoid function be $g(x)$.   
$$g(x)=\dfrac{1}{1+e^{−x}}$$
Hence,
$$σ(x)=\dfrac{1}{g(x)}$$
Differentiating σ with respect to x, we get:
$$\dfrac{d\sigma}{dx}=\dfrac{d\sigma}{dg}*\dfrac{dg}{dx}=−\dfrac{1}{g(x)^2}*\left(−e^{−x}\right)=\dfrac{e^{−x}}{g^2(x)}=\dfrac{e^{−x}}{(1+e^{−x})^2}$$
To simplify this fraction further, add and subtract 1 to and from the numerator. 
$$\dfrac{d\sigma}{dx}=\dfrac{1+e^{−x}−1}{(1+e^{−x})^2}$$
$$\dfrac{d\sigma}{dx}=\dfrac{1+e^{−x}}{(1+e^{−x})^2}$$
Therefore, the derivative of  the sigmoid function is given by the following:
$$\dfrac{d\sigma}{dx}=\sigma(x)(1-\sigma(x))$$
Now that you have the derivative of the sigmoid, let’s move on to find the derivative of the loss/cost function for logistic regression. If you substitute the sigmoid of the combination of the features along with weights \[$\sum$weights * features + bias)] into the loss function, you will get a loss function in terms of the actual labels (yi) and the predicted labels ($\sigma(x_i)=\sigma_i$ for simplification).

As you saw, the loss function, which relates the independent variables of the data point to the probability of that data point belonging to a particular class, can be expressed as follows:
$$\hat{L}(y;p)=−\dfrac{1}{n}\sum^n_{i=0}\left[y_ilog(\sigma_i)+(1−y_i)log(1−\sigma_i)\right]$$
where $\sigma_i=\sigma(x_i)$ represents the sigmoid of the ith data point.

  
This substituted log loss function will be the cost function that you need to minimise in order to predict the class labels correctly. In the next video, Jaidev will perform the mathematical transformation mentioned above. 

**VIDEO**

In this video, you saw the differentiation of the log loss function. You know that the loss function is defined as follows:
$$\hat{L}(y;p)=−\dfrac{1}{n}\sum^n_{i=0}\left[y_ilog(\sigma_i)+(1−y_i)log(1−\sigma_i)\right]$$
To simplify, let's consider the loss of ith data point as follows: 
$$l_i(y_i;p)=−\left[y_ilog(p_i)+(1−y_i)log(1−p_i)\right]$$
In this equation, pi is the probability of the data point belonging to the positive class, and the sigmoid function gives the following: 
$$p_i=\sigma_i=σ(wTxi)=\dfrac{1}{1+e^{−w^Tx_i}}$$
Here, $w$ is a column vector representing the weights $\begin{bmatrix}w_{1}\\w_{2}.\\.\\x_{k}\end{bmatrix}$ to be assigned to the feature vector $x$, $\begin{bmatrix}x_{i_1}\\x_{i_2}.\\.\\x_{i_k}\end{bmatrix}$. Both of these are columnar vectors.

Hence, $w^Tx_i=\left[w_1\ w_2\ .\ .\ w_k\right].\begin{bmatrix}x_{i_1}\\x_{i_2}.\\.\\x_{i_k}\end{bmatrix}=w_1x_{i_1}+w_2x_{i_2}+...+w_kx_{i_k}$.

So, $w^Tx_i=w_1x_{i_1}+w_2x_{i_2}+...+w_kx_{i_k}$, that is, the sum of weighted features of the ith data point. Here, k is the number of features. Therefore, there will be k weights in the weight vector.

Now substitute the value of the sigmoid function into the log loss function as follows: 
$$l_i(y_i;w;x_i)=−\left[y_ilog(\sigma_i)+(1−y_i)log(1−\sigma_i)\right]$$

We are differentiating this equation with respect to w to get $\nabla_wl_i$, as we intend to perform gradient descent optimization on the weights. Note that as $y_i$ and $x_i$ are the labels and the features of the data point and are already given, their differentials with respect to $w$ is going to be 0. So, you get the following:
 $$\nabla_wl_i=-\dfrac{\delta}{\delta{w}}\begin{bmatrix}y_ilog(\sigma_i)+(1-y_i)log(1-\sigma_i)\end{bmatrix}$$$$=-\left[y_i\dfrac{\delta}{\delta{w}}log(\sigma_i)+(1+y_i)\dfrac{\delta}{\delta{w}}log(1-\sigma_i)\right]$$$$=-\left[y_i\dfrac{1}{\sigma_i}\dfrac{\delta{\sigma_i}}{\delta{w}}+\dfrac{1-y_i}{1-\sigma_i}\dfrac{\delta}{\delta{w}}(1=\sigma_i)\right]$$$$-\left[\dfrac{y_i}{\sigma_i}\dfrac{\delta{\sigma_i}}{\delta{w}}-\dfrac{(1-y_i)}{(1-\sigma_i)}\dfrac{\delta{\sigma_i}}{\delta{w}}\right]$$$$=-\dfrac{\delta{\sigma_i}}{\delta{w}}\left[\dfrac{y_i}{\sigma_i}-\dfrac{1-y_i}{1-\sigma_i}\right]$$
Before moving further, let's find the value of $\dfrac{\delta{\sigma_i}}{\delta{w}}$. As discussed earlier, its value will be: 
$$\dfrac{\delta{\sigma_i}}{\delta{w}}=\dfrac{\delta}{\delta{w}}\sigma(w^Tx_i)=\dfrac{\delta{\sigma(w^Tx_i)}}{\delta{w^Tx_i}}\dfrac{\delta}{\delta{w}}(w^Tx_i)$$
The value of the derivative of the sigmoid function was calculated earlier. Substituting the value into the equation given above, we get: 

$$\dfrac{\delta}{\delta{w}}(w^Tx_i)=\sigma_i(1-\sigma_i)*\dfrac{\delta}{\delta{w}}(w^Tx_i)*$$
Finding the value of the term $\dfrac{\delta}{\delta{w}}(w^Tx_i)$ is a little critical. As discussed earlier, $w^Tx_i=w_1x_{i_1}+w_2x_{i_2}+...+w_kx_{i_k}$, and you want to differentiate this with respect to the weight vector $\begin{bmatrix}w_1\\w_2\\.\\.\\w_k\end{bmatrix}$. This differentiation can be done element-wise as follows: 
$$\dfrac{\delta}{\delta{w}}(w^Tx_i)=\begin{bmatrix}\dfrac{\delta{(w_1x_{i_1}+w_2x_{i_2}+...+w_nx_{i_n}})}{\delta{w_1}}\\\dfrac{\delta{(w_1x_{i_1}+w_2x_{i_2}+...+w_nx_{i_n}})}{\delta{w_2}}\\.\\.\\\dfrac{\delta{(w_1x_{i_1}+w_2x_{i_2}+...+w_nx_{i_n}})}{\delta{w_n}}\end{bmatrix}=\begin{bmatrix}x_{i_1}\\x_{i_2}\\.\\.\\x_{i_k}\end{bmatrix}=x_i$$
Note that all the weights are independent of each other. Hence, we get the result given above: $\dfrac{\delta}{\delta{w}}(w^Tx_i)=x_i$.

Substituting this into the original gradient equation for the ith data point, we get: 
$$\nabla_wl_i=-\sigma_i(1-\sigma_i)x_i\dfrac{\delta{\sigma_i}}{\delta{w}}\left[\dfrac{y_i}{\sigma_i}-\dfrac{1-y_i}{1-\sigma_i}\right]$$
Now, let's solve the second half of the equation, which is part of the brackets. 
$$\dfrac{y_i}{\sigma_i}-\dfrac{1-y_i}{1-\sigma_i}=\dfrac{y_i(1-\sigma_i)-\sigma_i(1-y_i)}{\sigma_i(1-\sigma_i)}=\dfrac{y_i-y_i\sigma_i-\sigma_i+\sigma_iy_i}{\sigma_i(1-\sigma_i)}=\dfrac{y_i-\sigma_i}{\sigma_i(1-\sigma_i)}$$
Substituting this back into the gradient equation, we get:
$$\nabla_wl_i=-\sigma(1-\sigma_i)x_i\dfrac{y_i-\sigma_i}{\sigma_i(1-\sigma_i)}$$
Therefore, 
$$\nabla_wl_i=x_i(\sigma_i-y_i)$$
where,

- $\nabla_wl_i$ is the gradient of the loss with respect to the weights for the ith data point.
- $x_i$ is the vector of feature values $\begin{bmatrix}x_{i_1}\\x_{i_2}\\.\\.\\x_{i_k}\end{bmatrix}$.
- $\sigma_i$ is the $\dfrac{1}{1+e^{−(w^Tx_i)}}$.
- $y_i$ is the actual label.

Let's try to better represent $\nabla_wl_i$. Note that for the ith data point, $(\sigma_i−y_i)$ is scalar.
$$$\nabla_wl_i=\begin{bmatrix}\dfrac{\delta{l_i}}{\delta{}w_1}\\\dfrac{\delta{l_i}}{\delta{}w_2}\\.\\.\\\dfrac{\delta{l_i}}{\delta{}w_k}\end{bmatrix}=\begin{bmatrix}x_{i_1}\\x_{i_2}\\.\\.\\x_{i_k}\end{bmatrix}(\sigma_i-y_i)=x_i(\sigma_i-y_i)=\begin{bmatrix}x_{i_1}(\sigma_i-y_i)\\x_{i_2}(\sigma_i-y_i)\\.\\.\\x_{i_k}(\sigma_i-y_i)\end{bmatrix}$$
Now, remember that:
$$\hat{L}(y;p)=-\dfrac{1}{n}\sum^n_{i=0}\left[y_ilog(p_i)+(1-y_i)log(1-p_i)\right]$$
$$=-\dfrac{1}{n}\left[l_1+l_2+.....+l_n\right]=-\dfrac{1}{n}\sum^n_{i=0}l_i$$
Hence,
$$\nabla_w\hat{L}(y;p)=-\dfrac{1}{n}\sum^n_{i=0}\dfrac{\delta{l_i}}{\delta{w}}=\dfrac{1}{n}\sum^n_{i=0}x_i(\sigma_i-y_i)$$
which is the average of the loss for the 'n' data points.
  
But how are the equations derived for the derivate of the loss of a single data point and that of the log loss used to find the weights? In the next segment, we will apply the gradient descent optimization that you learnt about in the previous segment to find the weights.