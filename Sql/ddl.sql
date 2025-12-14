
-- Dimensões
CREATE TABLE IF NOT EXISTS dim_localidade (
  cod_municipio_ibge VARCHAR(7) PRIMARY KEY,
  nome_municipio     TEXT NOT NULL,
  cod_uf             CHAR(2) NOT NULL,
  sigla_uf           CHAR(2) NOT NULL
);

CREATE TABLE IF NOT EXISTS dim_tempo (
  ano INTEGER PRIMARY KEY
);

CREATE TABLE IF NOT EXISTS dim_deficiencia (
  cod_def  VARCHAR(32) PRIMARY KEY,
  desc_def TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS dim_escola (
  co_entidade        BIGINT PRIMARY KEY,
  nome_escola        TEXT,
  dependencia_adm    VARCHAR(20),
  rede               VARCHAR(20),
  cod_municipio_ibge VARCHAR(7) REFERENCES dim_localidade(cod_municipio_ibge)
);

-- Fatos
CREATE TABLE IF NOT EXISTS f_matricula_especial (
  co_entidade        BIGINT REFERENCES dim_escola(co_entidade),
  cod_municipio_ibge VARCHAR(7) REFERENCES dim_localidade(cod_municipio_ibge),
  ano                INTEGER REFERENCES dim_tempo(ano),
  cod_def            VARCHAR(32) REFERENCES dim_deficiencia(cod_def),
  em_classe_comum    BOOLEAN,
  qtd_matriculas     INTEGER,
  PRIMARY KEY (co_entidade, ano, cod_def)
);

CREATE TABLE IF NOT EXISTS f_recursos_acessibilidade (
  co_entidade   BIGINT REFERENCES dim_escola(co_entidade),
  ano           INTEGER REFERENCES dim_tempo(ano),
  recurso_tipo  VARCHAR(50),
  qtd_recursos  INTEGER DEFAULT 0,
  PRIMARY KEY (co_entidade, ano, recurso_tipo)
);

CREATE TABLE IF NOT EXISTS f_populacao_pcd (
  sigla_uf            CHAR(2),
  ano                 INTEGER,
  tipo_funcionalidade VARCHAR(32), -- OUVIR (PNAD 2022)
  qtd_pessoas         BIGINT,
  PRIMARY KEY (sigla_uf, ano, tipo_funcionalidade)
);
