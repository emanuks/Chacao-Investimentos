CREATE TABLE "Usuario" (
  "cpf" integer PRIMARY KEY,
  "role_id" integer,
  "escolaridade_id" integer,
  "estado_civil_id" integer,
  "genero_id" integer,
  "endereco_id" int,
  "senha" text NOT NULL,
  "nome" text NOT NULL,
  "data_nascimento" date NOT NULL
);

CREATE TABLE "Telefone" (
  "id" integer PRIMARY KEY,
  "usuario_id" integer,
  "ddd" varchar(2) NOT NULL,
  "numero" varchar(10) NOT NULL
);

CREATE TABLE "Funcao" (
  "id" integer PRIMARY KEY,
  "is_admin" boolean NOT NULL
);

CREATE TABLE "Endereco" (
  "id" integer PRIMARY KEY,
  "tipo_id" integer,
  "estado_id" integer,
  "cep" varchar(14) NOT NULL,
  "rua" varchar(20),
  "quadra" integer,
  "lote" integer,
  "numero" integer
);

CREATE TABLE "TipoEndereco" (
  "id" integer PRIMARY KEY,
  "nome" text
);

CREATE TABLE "Estado" (
  "id" integer PRIMARY KEY,
  "nome" text NOT NULL
);

CREATE TABLE "Cidade" (
  "id" integer PRIMARY KEY,
  "estado_id" integer,
  "nome" text NOT NULL
);

CREATE TABLE "Bairro" (
  "id" integer PRIMARY KEY,
  "cidade_id" integer,
  "nome" text NOT NULL
);

CREATE TABLE "EstadoCivil" (
  "id" integer PRIMARY KEY,
  "nome" text
);

CREATE TABLE "Escolaridade" (
  "id" integer PRIMARY KEY,
  "nome" text NOT NULL,
  "curso" text
);

CREATE TABLE "Genero" (
  "id" integer PRIMARY KEY,
  "nome" text
);

CREATE TABLE "TesouroDireto" (
  "id" integer PRIMARY KEY,
  "indexador_id" integer,
  "nome" text UNIQUE NOT NULL,
  "data_vencimento" date NOT NULL,
  "taxa" float,
  "valor" float
);

CREATE TABLE "Indexador" (
  "id" integer PRIMARY KEY,
  "nome" text
);

CREATE TABLE "FundoInvestimento" (
  "id" integer PRIMARY KEY,
  "prazo_resgate_id" integer,
  "classe_id" integer,
  "nome" text NOT NULL,
  "valor_minimo" integer NOT NULL
);

CREATE TABLE "Classe" (
  "id" integer PRIMARY KEY,
  "nome" text
);

CREATE TABLE "PrazoResgate" (
  "id" integer PRIMARY KEY,
  "prazo" text
);

CREATE TABLE "RendaFixa" (
  "id" integer PRIMARY KEY,
  "classe_id" integer,
  "emissora_id" integer,
  "nome" text NOT NULL,
  "prazo_vencimento" integer NOT NULL,
  "horario_limite" time NOT NULL,
  "valor_minimo" float NOT NULL,
  "taxa_remuneracao" float
);

CREATE TABLE "Emissora" (
  "id" integer PRIMARY KEY,
  "endereco_id" integer,
  "nome" text NOT NULL
);

CREATE TABLE "AplicacaoFinanceira" (
  "id" integer PRIMARY KEY,
  "nome" text NOT NULL,
  "usuario_id" integer NULL,
  "tesouro_direto_id" integer NULL,
  "fundo_investimento_id" integer NULL,
  "renda_fixa_id" integer NULL
);

ALTER TABLE "Usuario" ADD FOREIGN KEY ("role_id") REFERENCES "Funcao" ("id");

ALTER TABLE "Usuario" ADD FOREIGN KEY ("escolaridade_id") REFERENCES "Escolaridade" ("id");

ALTER TABLE "Usuario" ADD FOREIGN KEY ("estado_civil_id") REFERENCES "EstadoCivil" ("id");

ALTER TABLE "Usuario" ADD FOREIGN KEY ("genero_id") REFERENCES "Genero" ("id");

ALTER TABLE "Usuario" ADD FOREIGN KEY ("endereco_id") REFERENCES "Endereco" ("id");

ALTER TABLE "Telefone" ADD FOREIGN KEY ("usuario_id") REFERENCES "Usuario" ("cpf");

ALTER TABLE "Endereco" ADD FOREIGN KEY ("tipo_id") REFERENCES "TipoEndereco" ("id");

ALTER TABLE "Endereco" ADD FOREIGN KEY ("estado_id") REFERENCES "Estado" ("id");

ALTER TABLE "Cidade" ADD FOREIGN KEY ("estado_id") REFERENCES "Estado" ("id");

ALTER TABLE "Bairro" ADD FOREIGN KEY ("cidade_id") REFERENCES "Cidade" ("id");

ALTER TABLE "TesouroDireto" ADD FOREIGN KEY ("indexador_id") REFERENCES "Indexador" ("id");

ALTER TABLE "FundoInvestimento" ADD FOREIGN KEY ("prazo_resgate_id") REFERENCES "PrazoResgate" ("id");

ALTER TABLE "FundoInvestimento" ADD FOREIGN KEY ("classe_id") REFERENCES "Classe" ("id");

ALTER TABLE "RendaFixa" ADD FOREIGN KEY ("classe_id") REFERENCES "Classe" ("id");

ALTER TABLE "RendaFixa" ADD FOREIGN KEY ("emissora_id") REFERENCES "Emissora" ("id");

ALTER TABLE "Emissora" ADD FOREIGN KEY ("endereco_id") REFERENCES "Endereco" ("id");

ALTER TABLE "AplicacaoFinanceira" ADD FOREIGN KEY ("usuario_id") REFERENCES "Usuario" ("cpf");

ALTER TABLE "AplicacaoFinanceira" ADD FOREIGN KEY ("tesouro_direto_id") REFERENCES "TesouroDireto" ("id");

ALTER TABLE "AplicacaoFinanceira" ADD FOREIGN KEY ("fundo_investimento_id") REFERENCES "FundoInvestimento" ("id");

ALTER TABLE "AplicacaoFinanceira" ADD FOREIGN KEY ("renda_fixa_id") REFERENCES "RendaFixa" ("id");
