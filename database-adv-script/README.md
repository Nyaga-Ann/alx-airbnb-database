# Complex SQL Join Queries

This directory contains advanced SQL queries using INNER JOIN, LEFT JOIN, and FULL OUTER JOIN for the Airbnb Clone project.

## Queries Included:
- INNER JOIN: Users and their bookings
- LEFT JOIN: Properties and their reviews (even those with no reviews)
- FULL OUTER JOIN: All users and all bookings, including unmatched data

# Advanced SQL Scripts for ALX Airbnb Database

This directory contains advanced SQL query scripts involving JOINs and subqueries based on the Airbnb database.

## Files

### `joins_queries.sql`

This file contains:
- `INNER JOIN` to retrieve all bookings with respective users.
- `LEFT JOIN` to retrieve all properties and their reviews, including those without reviews.
- `FULL OUTER JOIN` to retrieve all users and bookings, even unmatched ones.

### `subqueries.sql`

This file contains:
- A **non-correlated subquery** to find all properties where the average rating is greater than 4.0.
- A **correlated subquery** to find users who have made more than 3 bookings.

---

# Aggregation and Window Functions

This file contains SQL queries that apply aggregate functions and window functions to analyze Airbnb booking data.

## Queries

- **Total Bookings per User:**  
  Uses `COUNT` and `GROUP BY` to show how many bookings each user has made.

- **Ranking Properties:**  
  Uses `RANK()` window function to rank properties based on the number of bookings.

---

## Author

- ALX ProDev BE Program
- GitHub: [ann-nyaga]


