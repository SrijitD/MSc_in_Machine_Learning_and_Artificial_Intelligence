# Understanding Gradient Descent Optimization

Before you go through this and the next couple of segments, you should revise the concepts of differentiation from the session on 'Differential Calculus' in the module on 'Math for Machine Learning' in the resource section. Also, please note that even if you do not understand every derivation explained, it is not going to affect your further learning. Nevertheless, sit down with a pen and a paper and keep writing down the equations to have a complete understanding of the derivations in this segment.

In the previous segment, you saw the log loss function is given as follows: 
$$\hat{L}(y;p)=−\frac{1}{n}\sum^n_{i=0}\left[y_ilog(p_i)+(1−y_i)log(1−p_i)\right]$$
where, 

- $y_i$ is the actual label of the ith data point, and 
- $p_i$ is the predicted probability of the ith data point belonging to the positive class. If this probability is greater than the threshold, then the predicted data label will be positive, else it will be negative.

Now, you already know that pi can be expressed as a sigmoid of the features of the data as follows:
$$p_i=\dfrac{1}{1+e^{−(\beta_1x_{1i}+\beta_2x_{2i})}}$$
where,

- $p_i$ is the probability of the ith data point belonging to the positive class, 
- $x_{ij}$ is the jth feature of ith data point, and
- $\beta$s are the weights of the features, which are sometimes also denoted by w.

In the next couple of segments, we will use w to denote the weights.

The log loss function given above is used to find the weights of the logistic regression model using gradient descent optimization. Hence, before we do the optimization to minimise the log loss function, let's understand what gradient descent optimization is through the following comprehension.

## Comprehension

In gradient descent optimization, the parameter being optimised is iterated in the direction of reducing cost/loss according to the following rule:
 $$W_{new}=W_{old}−\eta.\dfrac{\delta{L}}{\delta{W}}.$$
Let's try to get a better idea of this by understanding what gradient descent is. Gradient descent is an optimisation algorithm used to find the minimum of a function. The basic idea is to use the gradient of the function to find **the direction of steepest descent**, i.e., the direction in which the value of the function decreases most rapidly, and move towards the minima iteratively. 

Let's take an example of a one-dimensional (univariate) function. Suppose you have a loss function L, which depends only on one variable w: $L=w^2$. The minimum of this function is at w=0 as you can see from the graph given below.

![L(w)=w^2](https://i.ibb.co/fCZTsLx/L-w2.png)

The algorithm starts with an initial arbitrary guess of w, computes the gradient at that point and updates w according to the rule iteratively:

wnew=wold−η.∂L∂w

For example, let's take an arbitrary initial value $w_0=5$. The gradient  $\dfrac{\delta{L}}{\delta{w}}$ is $2w$. So, the value of the gradient (the slope) at $w_0=5\ is\ 2∗5=10$ as shown by the blue line in the figure given above. The gradient has **two critical pieces of information**:

-   The **sign of the gradient** (positive here) is the 'direction' in which the function value increases, and thus, the negative of that sign is the **direction of decrease.** 
-   The **value of the gradient** (10 here) represents how steeply the function value increases or decreases at that point.

We want to move in the direction of decreasing function value, i.e., in the negative direction of the gradient (towards the origin from w0=5). Also, if the gradient value is high, the step that we are going to take towards the minimum is going to be large, and a smaller one if it is low. We control the **step size** through **the learning rate** η. Both these ideas are captured in the term $-\eta.{\dfrac{\delta{L}}{\delta{w}}}$.

Let's perform one iteration of gradient descent starting with $w_0=5$ and $\eta=0.1$.
$$w_1=w_0-\eta.{\dfrac{\delta{L}}{\delta{w}}}$$
$$w_1=5−(0.1)(10)$$
$$w_1=4$$
Notice that we have moved closer to the minima. Try doing another iteration and verify that you have moved closer. You can change the value of η to see how many iterations it takes for you to reach the minima.

Gradient descent can be easily extended to multivariate functions, i.e., functions depending on multiple variables. Let's take the bivariate function $L(w_1,w_2)=w^2_1+w^2_2$. The minimum value of this function is 0 at the point $(w_1,w_2)=(0,0)$. For convenience, let's represent the two variables together as $W=(w_1,w_2)$.

![Bivariate Function](https://i.ibb.co/VwTnTz4/Bivariate-Function.png)

The iterative procedure is the same: It starts with an arbitrary initial guess of $W_0=(w_1,w_2)_0$ and moves in the direction of decreasing function value. The only change is that the **gradient $\dfrac{\delta{L}}{\delta{W}}$ is now a vector.** 
$$\dfrac{\delta{L}}{\delta{W}}=\begin{bmatrix}\dfrac{\delta{L}}{\delta{W_1}}\\\dfrac{\delta{L}}{\delta{W_2}}\end{bmatrix}=\begin{bmatrix}2w_1\\2w_2\end{bmatrix}$$
$M = \begin{bmatrix}
       \frac{5}{6} & \frac{1}{6} & 0           \\[0.3em]
       \frac{5}{6} & 0           & \frac{1}{6} \\[0.3em]
       0           & \frac{5}{6} & \frac{1}{6}
     \end{bmatrix}$
Each component of the **gradient vector** conveys the same two pieces of information. For example, let's take an initial guess $W_0=(5,−4)$. The gradient at this point is as follows:

$$\dfrac{\delta{L}}{\delta{W}}=\begin{bmatrix}2w_1\\2w_2\end{bmatrix}=\begin{bmatrix}-10\\8\end{bmatrix}$$

The first component $(2w_1=10)$, being positive, says that the function value increases along the increasing $w_1$, and the 'rate of change' along the w1 axis is 10. Similarly, the second component $(2w_2=−8)$ says that the function decreases along increasing $w_2$ with a rate of 8.

Combining both the elements, the **negative of the gradient vector**, $-\begin{bmatrix}2w_1\\2w_2\end{bmatrix}=\begin{bmatrix}-10\\8\end{bmatrix}$, is the **direction** in which the function value decreases most rapidly. The gradient vector is shown on a $w_1-w_2$ plane below.

![Gradient Vector](https://i.ibb.co/hMnQSx6/Gradient-Vector.jpg)

We take a step along that vector according to the equation given below. 
$$w_1=w_0-\eta.{\dfrac{\delta{L}}{\delta{w}}}$$
Where learning rate $\eta=0.1$
$$W_1=\begin{bmatrix}5\\-4\end{bmatrix}−0.1\begin{bmatrix}10\\-8\end{bmatrix}$$
$$W_1=\begin{bmatrix}4\\-3.2\end{bmatrix}$$
Notice that the point $W_1=\begin{bmatrix}4\\-3.2\end{bmatrix}$ is closer to the minima $(0,0)$ than the starting point $W_0=\begin{bmatrix}5\\-4\end{bmatrix}$ as you can see in the graph provided above. Perform one more iteration from $W_1$ to $W_2$ and verify that you have moved closer to the minima.

You can now extend this idea to any number of variables. Suppose your machine learning model has $k$ weights. You can represent them in a large vector $\begin{bmatrix}w_1\\w_2\\.\\.\\w_k\end{bmatrix}$. The gradient vector will also be a $k$-dimensional vector, each element of which captures two pieces of information: the direction and the rate of change of the function with respect to the weight $w_i$. 
$$\dfrac{\delta{L}}{\delta{w}}=\begin{bmatrix}\dfrac{\delta{L}}{\delta{w_1}}\\\dfrac{\delta{L}}{\delta{w_2}}\\...\\...\\\dfrac{\delta{L}}{\delta{w_k}}\end{bmatrix}$$

#### Gradient Descent With One Variable

Qn: Consider the minimisation of the univariate function $L(w)=w^2$. You saw one iteration starting from $w_0=5$, which moved to $w_1=4$. Continue one more iteration with the same learning rate $\eta=0.1$. What is the value of $w_2$?

- 4.8

- 3.2

- 3.6

Ans: B. $w_2=w_1−\alpha\dfrac{\delta{L}}{\delta{w}} = 4−0.1(8)=3.2$

#### Gradient Descent With Two Variables

Qn: Consider the minimisation of the function $L(w_1,w_2)=w^2_1+w^2_2$. You performed one iteration starting from $W_0=(5,−4)$, which moved to $W_1=(4,−3.2)$. Continue one more iteration with the same learning rate $\alpha=0.1$. What is the value of $W_2$?

- (3.2,−2.56)

- (3.2,2.56)

- (3.2,−3.84)

Ans: A. 

$w_2=w_1−\alpha\dfrac{\delta{L}}{\delta{w}}$

$W_{2,x}=4−(0.1)*(8)=3.2$

$W_{2,y}=(−3.2)−(0.1)*(−6.4)=−2.56$

So $W_2=(3.2,−2.56)$

#### Gradient of Loss Function

Qn: Consider an $k$-dimensional setting where the loss function $L$ depends on $k$ parameters. Choose all the correct statements from those given below about the gradient of the loss function with respect to the model parameters. (Note: More than one option may be correct.)

- The gradient is a $k$-dimensional vector.

- The gradient vector is a scalar.

- The gradient gives the direction in which the loss decreases the most rapidly.

- The gradient gives the direction in which the loss increases the most rapidly.

Ans: A & D. *The gradient vector will have the same dimension as the weights. The gradient vector is the direction in which the loss value increases the most rapidly.*

#### Gradient of a Loss With Respect to Multiple Variables

Qn: Suppose a layer in your machine learning model has a large number of weights, k weights, denoted by the variable w. In some iteration of the algorithm, the gradient is computed as follows:
$$\dfrac{\delta{L}}{\delta{w}}=\begin{bmatrix}\dfrac{\delta{L}}{\delta{w_1}}\\\dfrac{\delta{L}}{\delta{w_2}}\\...\\\dfrac{\delta{L}}{\delta{w_j}}\\\dfrac{\delta{L}}{\delta{w_{j+1}}}\\\dfrac{\delta{L}}{\delta{w_{j+2}}}\\...\\\dfrac{\delta{L}}{\delta{w_k}}\end{bmatrix}=\begin{bmatrix}0.45\\-0.30\\...\\\dfrac{\delta{L}}{\delta{w_j}}\\0.20\\0.00\\...\\\dfrac{\delta{L}}{\delta{w_k}}\end{bmatrix}$$
Imagine a $k$-dimensional space whose each dimension (axis) corresponds to one weight of the model. Choose all the correct statements from those given below.  
(Note: More than one option may be correct.)

- In the next iteration, the algorithm should move in the direction of the decreasing $w_1$.

- In the next iteration, the algorithm should move in the direction of the increasing $w_1$.

- In the next iteration, the algorithm should move towards the increasing $w_2$.

- In the next iteration, the algorithm will take a larger step along the dimension $w_1$ than $w_2$.

- In the next iteration, the algorithm will take a larger step along the dimension $w_2$ than $w_1$.

- Changing $w_{j+2}$ slightly does not significantly affect the value of the current loss.

Ans: A, C, D & F. *The loss with respect to $w$ increases if $\dfrac{\delta{L}}{\delta{w}}$ is positive (and vice versa). If it is zero, it means that the loss does not depend (locally) on that variable. Also, the magnitude of the gradient defines how large a step the algorithm takes along that variable.*

Now that you have a good understanding of the gradient descent optimization process to minimize a particular loss/cost function, in the next segment, you will learn how to minimise the loss function of the logistic regression model, the log loss function.