# Relational Structure

In the earlier segments, Vishwa explained how the term ‘relationship’ has an important role to play in an RDBMS. The relational model is the base upon which an RDBMS is built. In this segment, you will learn more about the relational model.

The relational model is comprised of three major components:

- Data Structure

- Data Integrity

- Data Manipulation

Let us take a look at each of these components in detail. The first component is the Data Structure. Let us learn about this component in the next video.   

**VIDEO**   

![Data_Structure](https://i.ibb.co/s2sxQfJ/Data-Structure.png)

**Data Structure**: As the name suggests, this model deals with the structure of the data. As you saw in the video, data is stored in the form of tables. Here, tables are also known as relations. A relation consists of two parts, which are detailed below.

- **Relation Heading:**  
  In the example shown in the video, the identifier and its datatypes are as follows:

![Relation_Heading](https://i.ibb.co/k2sf2SC/Relation-Heading.png)

- **Relation Body:**
  
  The Relation Body stores the different records within the table. Each cell within the record contains its individual name and datatype.

Now, we shall move on to the second component, that is, ‘Data Integrity’.

**VIDEO**   

**Data Integrity**: It ensures that the data stored is accurate at any point of time. Data integrity is ensured by three components:

- **Attribute Integrity**: Attribute integrity ensures that each attribute in a relation heading consists of the relation name and its datatype.

- **Entity Integrity:**  This rule ensures that no two entities are the same, and each entity is uniquely identifiable. We achieve this integrity by introducing the following keys:
  
  - **Primary Keys**
  - **Composite Primary Keys**

- **Note**: Primary Keys and Composite Primary Keys cannot be NULL.

**Referential Integrity:**  This rule determines how different tables are related to each other. This is achieved with the help of  **foreign keys**.

- Some features associated with referential integrity are as follows:
  
  - When a referenced row from a table where it acts as a primary key is deleted, its corresponding value in this table is set to NULL.
  
  - In case you do not want your foreign key to be set to NULL, it is possible to set it to a default value.

Now you will learn about the third component of the relational model, that is, ‘Data Manipulative’. This model mainly deals with how we can apply an operation between two relations to generate new relations. Let’s watch the next video to learn about it from our expert.

**VIDEO**   

![Data_Manipulation_Example](https://i.ibb.co/qkR56wd/Data-Manipulation-Example.png)

So, by now you must have understood the different aspects of the RDBMS model at a broad level.

In the next segment, you will be introduced to a very new aspect of RDBMS known as ERDs.
