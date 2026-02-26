BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "pokemon" (
	"pokemon_id"	INTEGER,
	"nome"	TEXT NOT NULL,
	"hp"	INTEGER NOT NULL,
	"attack"	INTEGER NOT NULL,
	"defense"	INTEGER NOT NULL,
	"sp_attack"	INTEGER NOT NULL,
	"sp_defense"	INTEGER NOT NULL,
	"speed"	INTEGER NOT NULL,
	PRIMARY KEY("pokemon_id")
);
CREATE TABLE IF NOT EXISTS "pokemon_tipo" (
	"pokemon_id"	INTEGER NOT NULL,
	"tipo_id"	INTEGER NOT NULL,
	PRIMARY KEY("pokemon_id","tipo_id"),
	FOREIGN KEY("pokemon_id") REFERENCES "pokemon"("pokemon_id"),
	FOREIGN KEY("tipo_id") REFERENCES "tipo"("tipo_id")
);
CREATE TABLE IF NOT EXISTS "relacao_tipos" (
	"tipo_atacante_id"	INTEGER NOT NULL,
	"tipo_defensor_id"	INTEGER NOT NULL,
	"multiplicador"	REAL NOT NULL,
	PRIMARY KEY("tipo_atacante_id","tipo_defensor_id"),
	FOREIGN KEY("tipo_atacante_id") REFERENCES "tipo"("tipo_id"),
	FOREIGN KEY("tipo_defensor_id") REFERENCES "tipo"("tipo_id")
);
CREATE TABLE IF NOT EXISTS "tipo" (
	"tipo_id"	INTEGER,
	"nome_tipo"	TEXT NOT NULL UNIQUE,
	PRIMARY KEY("tipo_id")
);
COMMIT;
