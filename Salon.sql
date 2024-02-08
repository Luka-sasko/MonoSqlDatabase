/*
CREATE TABLE "Owner"(
	"Id" integer PRIMARY KEY,
	"FirstName" text NOT NULL,
	"LastName" text NOT NULL,
	"Contact" text NOT NULL
	
);
CREATE TABLE "Salon"(
	"Id" integer PRIMARY KEY,
	"OwnerId" integer,
	"Name" text NOT NULL,
	"Year" date,
	"Adress" text NOT NULL,
	CONSTRAINT "FK_Owner_Salon_OwnerId" FOREIGN KEY("OwnerId") REFERENCES "Owner"("Id")
);
CREATE TABLE "Service"(
	"Id" integer PRIMARY KEY,
	"Name" text NOT NULL,
	"Price" integer NOT NULL,
	"AvailableAppointment" date NOT NULL
);
CREATE TABLE "SalonService"(
	"Id" integer PRIMARY KEY,
	"SalonId" integer NOT NULL,
	"ServiceId" integer NOT NULL,
	"Date" date NOT NULL,
	CONSTRAINT "FK_Salon_SalonService_SalonId" FOREIGN KEY ("SalonId") REFERENCES "Salon"("Id"),
	CONSTRAINT "FK_Service_SalonService_ServiceId" FOREIGN KEY ("ServiceId") REFERENCES "Service"("Id")
);
CREATE TABLE "Client"(
	"Id" integer PRIMARY KEY,
	"FirstName" text NOT NULL,
	"LastName" text NOT NULL,
	"Contact" text NOT NULL,
	"Email" text
);
CREATE TABLE "Reservation"(
	"Id" integer PRIMARY KEY,
	"ClientId" integer NOT NULL,
	"SalonServiceId" integer NOT NULL,
	CONSTRAINT "FK_Client_Reservation_ClientId"  FOREIGN KEY ("ClientId") REFERENCES "Client"("Id"),
	CONSTRAINT "FK_SalonService_Reservation_SalonServiceId" FOREIGN KEY ("SalonServiceId") REFERENCES "SalonService"("Id")
);
*/
/*
INSERT INTO "Owner" ("Id","FirstName","LastName","Contact")
VALUES ('0','Owner1','1','123456789');
INSERT INTO "Owner" ("Id","FirstName","LastName","Contact")
VALUES ('1','Owner2','2','123456789');

INSERT INTO "Salon" ("Id","OwnerId","Name","Year","Adress")
VALUES ('1','0','Salon1','2015-10-10','Adress1');
INSERT INTO "Salon" ("Id","OwnerId","Name","Year","Adress")
VALUES ('2','0','Salon2','2017-10-10','Adress2');
INSERT INTO "Salon" ("Id","OwnerId","Name","Year","Adress")
VALUES ('3','1','Salon3','2019-10-10','Adress3');

INSERT INTO "Service" ("Id","Name","Price","AvailableAppointment")
VALUES ('1','Service1','50','2024-02-08');
INSERT INTO "Service" ("Id","Name","Price","AvailableAppointment")
VALUES ('2','Service2','150','2024-02-10');
INSERT INTO "Service" ("Id","Name","Price","AvailableAppointment")
VALUES ('3','Service3','250','2024-02-12');
INSERT INTO "Service" ("Id","Name","Price","AvailableAppointment")
VALUES ('4','Service4','25','2024-02-7');

INSERT INTO "SalonService" ("Id","SalonId","ServiceId","Date")
VALUES ('1','1','1','2024-02-08');
INSERT INTO "SalonService" ("Id","SalonId","ServiceId","Date")
VALUES ('2','1','2','2024-02-18');
INSERT INTO "SalonService" ("Id","SalonId","ServiceId","Date")
VALUES ('3','2','3','2024-02-08');
INSERT INTO "SalonService" ("Id","SalonId","ServiceId","Date")
VALUES ('4','2','4','2024-02-18');
INSERT INTO "SalonService" ("Id","SalonId","ServiceId","Date")
VALUES ('5','3','1','2024-02-28');
INSERT INTO "SalonService" ("Id","SalonId","ServiceId","Date")
VALUES ('6','3','2','2024-02-21');


INSERT INTO "Client" ("Id","FirstName","LastName","Contact","Email")
VALUES ('1','Client1','ab','123456','Client1@gmail.com');
INSERT INTO "Client" ("Id","FirstName","LastName","Contact","Email")
VALUES ('2','Client2','ab','123455','Client2@gmail.com');
INSERT INTO "Client" ("Id","FirstName","LastName","Contact","Email")
VALUES ('3','Client3','ac','123556','Client3@gmail.com');
INSERT INTO "Client" ("Id","FirstName","LastName","Contact","Email")
VALUES ('4','Client4','ad','124456','Client4@gmail.com');

INSERT INTO "Reservation" ("Id","ClientId","SalonServiceId")
VALUES ('1','1','1');
INSERT INTO "Reservation" ("Id","ClientId","SalonServiceId")
VALUES ('2','2','2');
INSERT INTO "Reservation" ("Id","ClientId","SalonServiceId")
VALUES ('3','3','3');
INSERT INTO "Reservation" ("Id","ClientId","SalonServiceId")
VALUES ('4','4','4');
INSERT INTO "Reservation" ("Id","ClientId","SalonServiceId")
VALUES ('5','4','5');
INSERT INTO "Reservation" ("Id","ClientId","SalonServiceId")
VALUES ('6','4','6');
*/
UPDATE "Client"
SET "FirstName" = 'Alfred'
WHERE "Id" = 3;

SELECT "Client"."FirstName", "Client"."Contact"
FROM "Client"
WHERE "Id" = 3;


SELECT "Salon"."Name", "Owner"."FirstName", "Owner"."LastName"
FROM "Salon"
LEFT JOIN "Owner" ON "Salon"."OwnerId" = "Owner"."Id";

SELECT "Reservation"."ClientId","Client"."FirstName","Client"."Contact"
FROM "Reservation"
LEFT JOIN "Client" ON "Reservation"."ClientId" = "Client"."Id"
WHERE "Client"."FirstName" LIKE 'Client4';


