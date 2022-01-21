# Heatmaps

If you’ve used MS Excel, then you would have come across *conditional formatting*, which utilises colour intensities to indicate the magnitude of the numerical value.

![Simple-Heatmap](https://i.ibb.co/cNS2PHM/Simple-Heatmap.png)

Heat maps also utilise the same concept of using colours and colour intensities to visualise a range of values. You must have seen heat maps in cricket or football broadcasts on television to denote the players’ areas of strength and weakness.

![Football-Heatmap](https://i.ibb.co/6b6fWLt/Football-Heatmap.png)

Let’s listen to Rahim as he explains how to create a heat map

**VIDEO**

So, as explained in the video, a heat map can be created as long as you have a rectangular grid of values. For the demonstration, you’ll be seeing how to create a heat map for **Ratings/Size/Content Rating**.

![Ratings-Size-Content-Rating-Heatmap](https://i.ibb.co/BcVXFG6/Ratings-Size-Content-Rating-Heatmap.png)

**VIDEO**

Having seen Rahim make a pivot table, try doing the same in your notebook and answer this question after making another pivot table.

#### Pivot table

Qn: Make a pivot table whose index is 'Review_Bucket' which is created in the same way as 'Size_Bucket' using qcut, columns are Size_Buckets and values in the table are minimum Ratings. After making a pivot table, answer the question below.

Best minimum ratings for very highly reviewed apps are for what size bucket?

- size bucket with qcut [0, 0.2)

- size bucket with qcut [0.2, 0.4)

- size bucket with qcut [0.4, 0.6)

- size bucket with qcut [0.6, 0.8)

Ans: B. *First, create review buckets as*

```python
inp1['Reviews_Bucket'] = pd.qcut(inp1.Reviews, [0, 0.2, 0.4, 0.6, 0.8, 1], ["VL","L","M","H","VH"])
```

*Then create pivot table as*

```python
pd.pivot_table(data=inp1,index="Reviews_Bucket",columns="Size_Bucket",values="Rating",aggfunc=np.min)
```

*To look at the output, refer the following [link](https://drive.google.com/open?id=131ifpPLxws0W0hvAtpkhZH_yKVQeoJlD).*

*We observe the 'VH' reviews bucket and find the best rating as 3.4, under 'L' size bucker which is size bucket with qcut [0.2, 0.4)*

**VIDEO**

The next step is making the heatmap from the pivot table. Let's learn how to do that now.

#### Heatmap

Qn: Use the pivot table created in the question above to prepare the heatmap and choose the correct option.

Pivot table created in the previous question is given below:

![Review-Size-Rating-Pivot-table](https://i.ibb.co/648v08c/Review-Size-Rating-Pivot-table.png)

- As the Size of apps increases, the minimum rating also generally increases irrespective of the number of Reviews.

- As the number of Reviews increases, the minimum rating also generally increases irrespective of Size of the apps.

- You can’t say anything about the trend in the minimum rating across either the Reviews buckets or the Size buckets.

- None of the above.

Ans: B. *First, create the Reviews buckets as mentioned:*

```python
inp1['Reviews_Bucket'] = pd.qcut(inp1.Reviews, [0, 0.2, 0.4, 0.6, 0.8, 1], ["VL","L","M","H","VH"])
```

*Next create, the pivot table for Size/Reviews/Rating with aggfunc set to min*

```python
pd.pivot_table(data=inp1,index="Reviews_Bucket",columns="Size_Bucket",values="Rating",aggfunc=np.min)
```

*Finally, use a heat map to plot the table*

```python
res2 = pd.pivot_table(data=inp1,index="Reviews_Bucket",columns="Size_Bucket",values="Rating",aggfunc=np.min)
sns.heatmap(res2,cmap= "Greens")
```

*You can see that the general trend is that as the number of Reviews increases, the minimum rating also increases.*

Once you’ve created a rectangular grid (either provided or made using the pivot table method taught earlier), use the sns.heatmap() function and pass the grid dataframe as the parameter.Mention some parameters like (cmap = "Greens", annot=True) to enhance its readability.

The final heat map that you obtained looked like this:

![Review-Size-Rating-Heatmap](https://i.ibb.co/4jf8Tkh/Review-Size-Rating-Heatmap.png)

**Additional Notes:**

- Heat maps are predominantly used in machine learning problems to visualise a  Correlation Matrix, a grid that shows the correlation between any two quantitative variables. As mentioned in the additional notes of previous segments, understanding the correlation between variables is crucial for building and evaluating any ML model. You’ll learn more about them in the upcoming modules.
