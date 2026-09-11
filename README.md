# ecommerce-analytics

An end-to-end relational database design and analytical framework for e-commerce operations using advanced SQL workflows.

## Project Structure
* `schema.sql`: Core tables, relationships, and structural constraints.
* `seed_data.sql`: Core mock transactional records for execution testing.
* `analytics_queries.sql`: Analytical queries handling CLV, rankings, and operations metrics.
* `init_all.sql`: Execution script to deploy the database structure and datasets instantly.

## How to Run
1. Open your terminal or MySQL command line client.
2. Run the initialization script:
   ```sql
   SOURCE init_all.sql;
   ```
3. Run any analytic query from `analytics_queries.sql` to generate insights.
