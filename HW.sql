CREATE TABLE "Customer" (
  "customer_id" SERIAL PRIMARY KEY,
  "first_name" VARCHAR(100),
  "last_name" VARCHAR(100),
  "is_premium_membership?" BOOLEAN
	
  );
  
 CREATE TABLE "Payment" (
  "payment_id" SERIAL PRIMARY KEY,
  "payment_type" VARCHAR(100)
  
);

CREATE TABLE "Cafe" (
  "Cafe_id" SERIAL PRIMARY KEY,
  "Food_and_Drink" VARCHAR(100),
  "Price" NUMERIC(5,2)
  
);

CREATE TABLE "Movies" (
  "movie_id" SERIAL,
  "name" VARCHAR(100),
  "duration(mins)" INTEGER,
  "ratings" VARCHAR(6),
  PRIMARY KEY ("movie_id")
);


CREATE TABLE "Tickets" (
  "ticket_id" SERIAL PRIMARY KEY,
  "ticket_type" VARCHAR(50),
  "premium_membership" BOOLEAN,
  "movie_id" INTEGER REFERENCES "Movies"("movie_id")
  
);


CREATE TABLE "Quantity" (
  "quantity_id" SERIAL PRIMARY KEY,
  "category" VARCHAR(50),
  "quantity" NUMERIC(5,2),
  "Cafe_id" INTEGER REFERENCES "Cafe"("Cafe_id"),
  "ticket_id" INTEGER REFERENCES "Tickets"("ticket_id")
  
    
      
);


CREATE TABLE "Order" (
  "order_id" SERIAL PRIMARY KEY,
  "order_date" DATE,
  "total_cost" NUMERIC(8,2),
  "payment_id" INTEGER REFERENCES "Payment"("payment_id"),
  "customer_id" INTEGER REFERENCES "Customer"("customer_id"),
  "quantity_id" INTEGER REFERENCES "Quantity"("quantity_id")
  
);

SELECT *
FROM "Customer";

INSERT INTO "Customer" (
	first_name,
	last_name,
	address,
	payment_id
) VALUES (
	'John',
	'Doe',
	'1234 Really Cool St. Chicago Il',
	1
);

INSERT INTO "Customer" (
	first_name,
	last_name,
	"is_premium_membership?"
)	VALUES (
	'Frodo',
	'Baggines',
	true
	);

SELECT *
FROM "Cafe";

DELETE FROM "Customer"
WHERE customer_id = 2;

INSERT INTO "Customer" (
	customer_id,
	first_name,
	last_name,
	"is_premium_membership?"
)	VALUES (
	2,
	'Sam',
	'Gamjee',
	true
	);

INSERT INTO "Customer" (
	first_name,
	last_name,
	"is_premium_membership?"
)	VALUES (
	'Merry',
	'Brandybuck',
	true
	);


INSERT INTO "Customer" (
	first_name,
	last_name,
	"is_premium_membership?"
)	VALUES (
	'Peregrin',
	'Took',
	true
	);
	
INSERT INTO "Customer" (
	first_name,
	last_name,
	"is_premium_membership?"
)	VALUES (
	'Dark',
	'Lord',
	false
	);

INSERT INTO "Cafe" (
	"Food_and_Drink",
	"Price"
) VALUES ( 
	'lembas bread',
	500.25
);

INSERT INTO "Movies" (
	"name",
	"duration(mins)",
	"ratings"
) VALUES (
	'LordOfTheRings',
	120,
	'M')

SELECT *
FROM "Payment";

INSERT INTO "Payment" (
	"payment_type"
) VALUES (
	'Visa');

UPDATE "Payment"
SET payment_type = 'DISCOVER';
	

