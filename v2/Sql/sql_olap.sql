SELECT
  e.cod_municipio_ibge,
  fm.ano,
  fm.cod_def,
  fm.qtd_matriculas
FROM f_matricula_especial fm
JOIN dim_escola e
  ON e.co_entidade = fm.co_entidade;


--SEED: dados fake apenas para testes de OLAP e mostrar aos colegas

INSERT INTO f_matricula_especial
  (co_entidade, cod_municipio_ibge, ano, cod_def, em_classe_comum, qtd_matriculas)
VALUES
  (1001, '3550308', 2023, 'DEF_AUDITIVA', TRUE, 10),
  (1001, '3550308', 2023, 'SURDEZ', TRUE, 5);

INSERT INTO f_recursos_acessibilidade
  (co_entidade, ano, recurso_tipo, qtd_recursos)
VALUES
  (1001, 2023, 'INTERPRETE_LIBRAS', 1);
