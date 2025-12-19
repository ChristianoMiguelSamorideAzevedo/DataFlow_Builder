SELECT
  e.cod_municipio_ibge,
  fm.ano,
  fm.cod_def,
  fm.qtd_matriculas
FROM f_matricula_especial fm
JOIN dim_escola e
  ON e.co_entidade = fm.co_entidade;
