# 2023-01-12 Thursday ER Model Basics

## Schemas and Instances

Important terms:
- **Schema** --> logical structure of databases, each table
- **Instances** --> content of database, actual data
- Entity-Relationship (ER) diagram:
    + Entities are usually noun. Represented with squares, while **attributes** with circles (these are like what characteristic/variable they contain). So entity is described by using a set of *attributes*.
    + Entity set are collection of similar entites
        * All entities in entity set have same set of attributes, **however** now when considering ISA hierachies.
        * Each attribute has a *domain* (e.g. float, date, int)
        * Each entity set has a *key*  (**Composed of all *underlined* attributes**) 
            - Choosing key is **important and hard**
    + Relationship are usually 

    + Keys is **minimal** set of one or more attributes, to identify uniquely and entity in entity set.
        * **Primary key** is key chosen as principal means to identify entities in entity set.