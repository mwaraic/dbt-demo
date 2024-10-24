
/*
    Welcome to your first dbt model!
    Did you know that you can also configure models directly within SQL files?
    This will override configurations stated in dbt_project.yml

    Try changing "table" to "view" below
*/

{{ config(materialized='table') }}

WITH cat_by_weight AS
(
   SELECT * FROM {{ ref('stg_yrb__books') }}
)
SELECT category, sum(weight) AS total_weight
FROM cat_by_weight
GROUP BY category
