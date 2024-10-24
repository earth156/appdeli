BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "product" (
	"pro_id"	INTEGER,
	"details"	TEXT,
	"img"	TEXT,
	"status"	TEXT,
	"user_send"	INTEGER,
	"user_receive"	INTEGER,
	"rider"	INTEGER,
	PRIMARY KEY("pro_id" AUTOINCREMENT),
	CONSTRAINT "rider" FOREIGN KEY("rider") REFERENCES "",
	CONSTRAINT "user_receive" FOREIGN KEY("user_receive") REFERENCES "",
	CONSTRAINT "user_send" FOREIGN KEY("user_send") REFERENCES "users"("user_id")
);
CREATE TABLE IF NOT EXISTS "users" (
	"user_id"	INTEGER,
	"name"	TEXT,
	"phone"	TEXT,
	"password"	TEXT,
	"car_reg"	TEXT,
	"profile"	TEXT,
	"address"	TEXT,
	"gps"	TEXT,
	"type"	TEXT,
	PRIMARY KEY("user_id" AUTOINCREMENT)
);
INSERT INTO "users" VALUES (1,'1','0','1',NULL,'1','1','1','user');
COMMIT;
