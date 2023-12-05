İlk isminde Nick, Ed ve Jennifer adları bulunan aktörlerin adını ve soyadını gösterin.
SELECT * FROM actor
WHERE first_name = 'Nick' OR first_name = 'Ed' OR  first_name = 'Jennifer';

İlk isminde adları Ed, Nick ve Jennifer olan aktörün sadece soyadını gösterin.
SELECT last_name FROM actor
WHERE first_name = 'Nick' OR first_name = 'Ed' OR first_name = 'Jennifer';

Adres tablosunun bütün ayrıntılarını gösterin.
SELECT * FROM address;

Adres tablosunda ilçe ve telefonu (district & phone) azalan sırada gösterin
SELECT district, phone FROM address 
ORDER BY district,phone DESC;

Film ve envanter tablosundaki film_id’yi kullanarak, Film tablosundan film_id’yi, title’ i ve Envanter tablosundan envanter_idsini gösterin.
SELECT film.film_id,film.title, inventory.inventory_id FROM film, inventory;

Envanter tablosu ve rental tablosundan oluşan ilk 5 satırı gösterin.
SELECT * FROM inventory,rental
WHERE inventory.inventory_id = rental.inventory_id
LIMIT 5;

