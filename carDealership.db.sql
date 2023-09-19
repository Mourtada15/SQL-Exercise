BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "companies" (
	"ID"	INTEGER NOT NULL,
	"Name"	TEXT NOT NULL UNIQUE,
	"Date"	INTEGER NOT NULL,
	PRIMARY KEY("ID" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "employees" (
	"ID"	INTEGER NOT NULL,
	"Name"	TEXT NOT NULL UNIQUE,
	"Role"	TEXT NOT NULL,
	"Company"	TEXT,
	PRIMARY KEY("ID" AUTOINCREMENT)
);
CREATE TABLE IF NOT EXISTS "my_company" (
	"Name"	TEXT,
	"Company"	TEXT,
	"Date"	INT
);
INSERT INTO "companies" ("ID","Name","Date") VALUES (1,'Google',1998),
 (2,'Facebook',2004),
 (3,'Instagram',2010),
 (4,'Snapchat',2011);
INSERT INTO "employees" ("ID","Name","Role","Company") VALUES (1,'Marc','Software Engineer','Google'),
 (2,'Maria','Software Engineer','Google'),
 (3,'Alaa','Team Leader','Facebook'),
 (4,'Hala','Graphic Designer','Snapchat');
INSERT INTO "my_company" ("Name","Company","Date") VALUES ('Marc','Google',1998),
 ('Maria','Google',1998),
 ('Alaa','Facebook',2004),
 ('Hala','Snapchat',2011);
COMMIT;
