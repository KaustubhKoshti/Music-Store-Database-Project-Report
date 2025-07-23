WITH genre_sales_by_country AS (
    SELECT 
        i.billing_country,
        g.genre_id,
        g.name AS genre_name,
        COUNT(*) AS purchase_count,
        RANK() OVER (PARTITION BY i.billing_country ORDER BY COUNT(*) DESC) AS genre_rank
    FROM invoice i
    JOIN invoice_line il ON i.invoice_id = il.invoice_id
    JOIN track t ON il.track_id = t.track_id
    JOIN genre g ON t.genre_id = g.genre_id
    GROUP BY i.billing_country, g.genre_id, g.name
)

SELECT billing_country, genre_name, purchase_count
FROM genre_sales_by_country
WHERE genre_rank = 1
ORDER BY billing_country;

WHERE spending_rank = 1
ORDER BY billing_country;