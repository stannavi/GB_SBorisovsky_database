USE mobile_phones;


SELECT model, price, manufacturer 
FROM mobile_phones
WHERE manufacturer = "Samsung";

SELECT manufacturer, COUNT(manufacturer)
FROM mobile_phones
GROUP BY manufacturer
HAVING COUNT(manufacturer) > 2