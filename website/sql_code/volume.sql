SELECT ticker, current_stock_price, volume, average_volume_3_month, relative_volume, beta, volume
FROM "2021-06-29"
where beta != "-"
ORDER BY beta DESC;
