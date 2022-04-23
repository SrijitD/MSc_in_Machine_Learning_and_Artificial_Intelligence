# Usecase I (cont'd)

In the previous segments, you understood the problem statement and got an idea of how SparkUI works. Now, you will execute the query and solve the problem tasks provided earlier.

**VIDEO**

To practice coding with Sajan, kindly download the datasets and the notebooks from the following file.

In this use case, you have used the ‘join’ query in order to solve the given task. In addition to the join query, new tables were created in order to select and work on desired columns and to implement an optimised plan.

Trees are created forming a pathway of execution. The logical flow of trees is similar to the logical flow of a written query. This is because a few of the logical optimisations are carried out in the code itself. For instance, the ball-by-ball table has a lot of columns but only a few columns are required to fulfil the desired condition; hence, you will only select the columns that are needed and work on them. The same applies to the cricket match dataset. Therefore, you can see that the number of columns has been reduced, or optimised in the code itself.

In order to extract the maximum performance from the Spark catalyst optimiser, as a rule of thumb, you should avoid calling actions unless absolutely necessary. This practice offers two-fold benefits:

- First, the action causes the runtime to increase.

- Second, if there are fewer actions, the optimiser has a better capability to rearrange the logical flow and make the program more efficient.
