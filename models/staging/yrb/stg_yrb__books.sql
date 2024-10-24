SELECT
    id,
    title,
    year,
    language,
    weight,
    category

FROM {{source('yrb', 'books')}}