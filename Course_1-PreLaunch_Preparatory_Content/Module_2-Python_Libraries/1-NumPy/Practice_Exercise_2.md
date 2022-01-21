# Practice Exercise II

The following Python file consists of certain questions based on the concepts that you have learnt in this session. You are expected to code in the Jupyter Notebook to find the correct solutions to the given questions and answer the MCQs given below.

You can quickly refer to this [cheat sheet](https://cheatography.com/mdesai96/cheat-sheets/numpy-cheat-sheet/pdf/) for the commands and syntax.

#### Shape of an Array

Qn: What are the dimensions of the array created using the list 'score'?

- 1

- 2  

- 3

- 4

Ans: B. *You can check the dimensions of the array using `np.ndim` after converting the list to an array.*

#### Array Operations

Qn: How many players scored 0 runs in their inning?

- 20

- 22

- 24

- 26

Ans: D. *You can slice the created array over the asked condition and then count the number of entries.  
Syntax: `len(score[score[:,0]==0])` [For this command, the list has to be converted to an array first.]*

Qn: What is the highest number of wickets taken by a player?

- 4

- 6

- 3

- 5

Ans: A. *The number of wickets are stored in the second element in the list score.  
Syntax: `np.max(score[:, 1])` [For this command, the list has to be converted to an array first.]*

Qn: Find the ID of the player who scored the maximum runs in the innings

- 193

- 219

- 548

- 1021

Ans: C. *The number of runs are stored in the first element in the list score.  
Syntax: `player[score[:, 0] == np.max(score[:, 0])]` [For this command, the lists have to be converted to an array first.]*

Qn: How many all-rounders are present in the provided list? An all-rounder is someone who is good in both batting and bowling. Check if the individual has taken 2 or more wickets and scored more than 35 runs in their innings.  

- 5

- 6

- 7

- 8

Ans: B. *Provide multiple conditions to fetch the desired rows.  
Syntax: `len(score[(score[:, 0]>35) & (score[:, 1]>=2)])` [For this command, the lists have to be converted to an array first.]*

As discussed in the previous lectures, NumPy is a library that helps in scientific calculations. The notebook exercise given below will ask you to do the same. You will be writing code to perform data transformation, which is common in machine learning. Although the task that you will be performing can be easily done using machine learning libraries such as scikit-learn (which you will learn later in the program), it is always a good practice to write code from scratch. The notebook given below has some questions for you to try. It will need some functions that you might not have learnt in the session, but you can always visit the documentation to find the function that you want to use.

The solutions to the problems in the notebook provided above are given below. Before you look at the solutions, try to give the practice problem your best shot. You could also reach out to your teaching assistants (TAs) or the discussion forum if you get stuck.

This activity is designed to give you an opportunity to learn how to write code from scratch.

Additional Practice Questions

1. **[Draw a Tic Tac Toe gameboard](http://www.practicepython.org/exercise/2015/11/26/27-tic-tac-toe-draw.html)**
