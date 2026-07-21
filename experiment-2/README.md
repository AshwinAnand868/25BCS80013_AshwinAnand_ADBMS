# Experiment 2

**Name:** Ashwin Anand  
**UID:** 25BCS80013

## Aim

To understand and implement SQL set operations including **INTERSECT**, **UNION**, **UNION ALL**, and **EXCEPT** by writing queries on the given database tables.

---

## Question

### Task 1: INTERSECT

Consider a supermarket database.

- The **fruit** table contains the list of all fruits available in the market.
- The **inventory** table contains the updated list of items currently available in the supermarket.

Write a query to display the names of fruits that are present in both the **fruit** and **inventory** tables.

---

### SQL Query Used

```sql
SELECT f_name
FROM fruit
INTERSECT
SELECT inv_name
FROM inventory;
```

### Expected Output

```text
┌────────────┐
│   f_name   │
├────────────┤
│ Banana     │
│ Cherry     │
│ Grape      │
│ Kiwi       │
│ Pear       │
│ Pineapple  │
│ Watermelon │
└────────────┘
```

---

## Task 2: UNION ALL

XYZ Pvt Ltd maintains two employee tables:

- **employee** – contains full-time employees and a few active part-time employees.
- **pt_employee** – contains all part-time employees.

Write a query to display the names of employees from both tables without removing duplicate records.

### SQL Query Used

```sql
SELECT emp_name
FROM employee
UNION ALL
SELECT emp_name
FROM pt_employee;
```

### Expected Output

```text
┌─────────────────┐
│    emp_name     │
├─────────────────┤
│ John Smith      │
│ Sarah Johnson   │
│ Mark Davis      │
│ Lisa Brown      │
│ Kevin Lee       │
│ Tom Wilson      │
│ Emily Parker    │
│ Mike Adams      │
│ Megan Kim       │
│ Adam Scott      │
│ Jessica Lee     │
│ David Chen      │
│ Julia Lee       │
│ Daniel Brown    │
│ Olivia Taylor   │
│ Maxwell Johnson │
│ Ashley Kim      │
│ Jackie Nguyen   │
│ Derek Smith     │
│ Emily Wang      │
│ Nate Thomas     │
│ Sophia Lee      │
│ Tom Wilson      │
│ Emily Parker    │
│ Mike Adams      │
│ Megan Kim       │
└─────────────────┘
```

---

## Task 3: UNION

Write a query to combine the **Arts** and **Science** tables into a single result using the **UNION** operator.

### SQL Query Used

```sql
SELECT *
FROM Arts
UNION
SELECT *
FROM Science;
```

---

## Task 4: EXCEPT

Using the supermarket database, write a query to display the fruits that are available in the **fruit** table but are **not present** in the **inventory** table.

### SQL Query Used

```sql
SELECT f_name
FROM fruit
EXCEPT
SELECT inv_name
FROM inventory;
```

### Expected Output

```text
┌────────┐
│ f_name │
├────────┤
│ Apple  │
│ Mango  │
│ Orange │
└────────┘
```

---

## Output Screenshot attached

---

## Image Explanation

The screenshot shows the successful execution of the SQL queries demonstrating the set operators **INTERSECT**, **UNION**, **UNION ALL**, and **EXCEPT**. The output confirms that the common records, combined records, combined records with duplicates, and exclusive records were retrieved correctly according to each operation.

---

## Result

The SQL set operations **INTERSECT**, **UNION**, **UNION ALL**, and **EXCEPT** were implemented successfully. The queries produced the expected results, demonstrating the correct use of each set operator for combining and comparing data from multiple tables.