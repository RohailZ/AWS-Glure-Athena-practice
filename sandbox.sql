echo '\n task 1 \n'

select * from influencers
where followers > (select AVG(followers) from influencers);


echo '\n tast 2 \n'

select title, brand, price from skincare
where skin_type = 'Dry' and product = 'Moisturizer'
order by price desc
limit 3;

echo '\n task 3 \n'

SELECT 
    c.brand,
    c.name,
    c.price,
    c.description,
    c.product_link,
    color.hex_value,
    color.colour_name
FROM 
    cosmetics AS c
CROSS JOIN UNNEST(c.product_colors) AS t (color)
WHERE (color.colour_name LIKE '%Honey%' OR color.colour_name LIKE'%honey%')
AND c.product_type = 'foundation'
AND c.description LIKE '%jojoba oil%';