# Summary

Having completed this session, you are now familiar with the various features of an RDBMS, the components of a Relational Model and with constructing an ERD. Now, let us revise them one by one.

An RDBMS is a Database Management System that stores data in the form of tables, where each table is related to the other tables in the database. This kind of model is called a relational model. Hence, it is said that an  **RDBMS follows a relational model**.

**Features of an RDBMS**

- **Tabular Structure:**
  
  - Entities are real-world objects, which are used to represent the tables in a database. The first row of a table denotes the different fields. The rows under the fields consist of the values held by each field. These rows are also termed records.
  
  - Within a table, you can have primary keys, composite primary keys and foreign keys. Let us revise each of them. **Primary Keys:**  The primary key is used to identify each row in a certain table uniquely.
    
    1. **Foreign Keys:**  A foreign key is a field of one table that references a primary key in another table to link it with the current table.
    
    2. **Composite Primary Keys:**  This kind of key is used when a single key is not enough to identify each row in a table uniquely. In such a case, a combination of two or more keys can be used to identify each row of a table uniquely.  

- **Normalization**
  
  - **Data redundancy**  occurs when the same piece of data is stored in multiple locations in a database. In such a case, the data stored in the database might be prone to inconsistency. Using normalization, we can avoid data redundancy. Redundant data might pose several challenges. Let us revise them.
    
    - **Insertion Anomaly**: This kind of anomaly occurs when you cannot insert some attributes because some other attributes are not already present.
    
    - **Updation Anomaly**: This kind of anomaly occurs in duplicated data when one copy is updated whereas the others are not, thus resulting in inconsistent data.
    
    - **Deletion Anomaly**: A Deletion anomaly occurs when the deletion of certain attributes results in the deletion of some other attributes as well.
  
  - We can convert the data to different normalized forms. Let us recap the most common forms of normalization:
    
    - **First Normal Form**
      
      - Any cell in a table  **cannot have multiple values**
      
      - Each row must be  **uniquely identifiable**
    
    - **Second Normal Form**
      
      - It should be in the **First Normal Form**,
      
      - **None of the attributes should be partially dependent on the primary key**.
    
    - **Third Normal Form**
      
      - It should already be in the  **Second Normal Form.**
      
      - There should  **not be any transitive dependency**  in that particular table.
  
  - Advantages of normalization are as follows:
    
    - It solves the problem of  **Data Duplicacy**.
    
    - It ensures **Data Integrity**, which means it ensures consistency and accuracy of data.
    
    - **It becomes easy to update the data.**
    
    - Your database becomes much more  **organized and flexible in design.**  

- **ACID Model**: Here, we will revise the four components of the ACID Model:
  
  - **Atomicity**: Atomicity means ‘all or nothing’. Any operation on a database can either be a complete success or a complete failure. If an operation is partially successful and fails in-between, then it will resume its original state.
  
  - **Consistency**: Once an operation has been performed, the state of the database before and after that operation must be consistent. In other words, the execution of an operation cannot impact any other record or attribute apart from the ones it was set to execute on.
  
  - **Isolation**: Any two operations are always isolated from or independent of each other. Their individual data shall remain concealed from the data of other operations (transactions).
  
  - **Durable**: In case of any failure, your data must never be lost. Hence, your RDBMS must ensure the durability of your data.

**Features of a Relational Model**

The relational model comprises three major components:

- **Data structure**
  
  - This model deals with the structure of the data. As you saw, data is stored in the form of tables. Here, tables are also known as relations. A relation consists of two parts:
    
    - **Relation heading**: The heading consists of different columns, and each heading value consists of a name, i.e., the identifier and its data type.
    - **Relation body**: The record body stores the different records in the table. Each cell in the record is comprised of its individual name and data type.

- **Data integrity**
  
  - It ensures that the stored data is valid at any point in time. Its integrity is guaranteed by three components.
    
    - **Attribute integrity**: This ensures that each attribute in a relation heading consists of the relation name and its data type.
    
    - **Entity integrity**: This ensures that no two entities are the same, i.e., each entity is uniquely identifiable. We achieve this property by introducing:
      
      - Primary keys, and
      
      - Composite primary keys
    
    - **Referential integrity**: This rule determines how different tables are related to each other with the help of foreign keys.

- **Data manipulation**
  
  - This model mainly deals with how we can apply an operation between two relations to generate new relations.

**Entity Relationship Diagrams**

- An entity-relationship diagram, or ERD, is a visualization of all the tables that represent how all the entities interact with each other.

- The different interactions between the tables are depicted as follows:
  
  - One-to-one relationship
  
  - Many-to-zero/one relationship
  
  - Many-to-many relationship
