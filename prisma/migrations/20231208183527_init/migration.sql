-- CreateTable
CREATE TABLE "Morador" (
    "idMorador" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "Nome" TEXT NOT NULL,
    "CondominioID" INTEGER NOT NULL,
    CONSTRAINT "Morador_CondominioID_fkey" FOREIGN KEY ("CondominioID") REFERENCES "Condominio" ("CondominioID") ON DELETE RESTRICT ON UPDATE CASCADE
);

-- CreateTable
CREATE TABLE "Condominio" (
    "CondominioID" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "Nome" TEXT NOT NULL,
    "endereco" TEXT
);

-- CreateTable
CREATE TABLE "Vaga" (
    "idVaga" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "VagaID" INTEGER NOT NULL,
    "Numero" INTEGER NOT NULL,
    "Ocupada" BOOLEAN NOT NULL,
    CONSTRAINT "Vaga_VagaID_fkey" FOREIGN KEY ("VagaID") REFERENCES "Morador" ("idMorador") ON DELETE RESTRICT ON UPDATE CASCADE
);

-- CreateTable
CREATE TABLE "NumApartamento" (
    "idNumApartamento" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "numAndar" INTEGER NOT NULL,
    "numApart" INTEGER NOT NULL,
    "MoradorID" INTEGER NOT NULL,
    CONSTRAINT "NumApartamento_MoradorID_fkey" FOREIGN KEY ("MoradorID") REFERENCES "Morador" ("idMorador") ON DELETE RESTRICT ON UPDATE CASCADE
);
