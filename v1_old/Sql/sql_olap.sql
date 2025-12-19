-- 1) Matrículas (auditivas) por UF e ano, com totais (ROLLUP)
SELECT e.sigla_uf,
       fm.ano,
       SUM(fm.qtd_matriculas) AS total_matriculas_audicao
FROM f_matricula_especial fm
JOIN dim_escola e ON e.co_entidade = fm.co_entidade
WHERE fm.cod_def IN ('SURDEZ','DEF_AUDITIVA','SURDOCEGUEIRA')
GROUP BY ROLLUP (e.sigla_uf, fm.ano)
ORDER BY e.sigla_uf NULLS LAST, fm.ano NULLS LAST;

-- 2) Distribuição UF × Classe Comum (CUBE)
SELECT e.sigla_uf,
       fm.em_classe_comum,
       SUM(fm.qtd_matriculas) AS qtd
FROM f_matricula_especial fm
JOIN dim_escola e ON e.co_entidade = fm.co_entidade
WHERE fm.ano = 2024
  AND fm.cod_def IN ('SURDEZ','DEF_AUDITIVA','SURDOCEGUEIRA')
GROUP BY CUBE (e.sigla_uf, fm.em_classe_comum)
ORDER BY e.sigla_uf NULLS LAST, fm.em_classe_comum NULLS LAST;

-- 3) Razão intérprete/aluno (indicador composto)
SELECT e.sigla_uf,
       fm.ano,
       SUM(fm.qtd_matriculas) AS alunos_audicao,
       COALESCE(SUM(fr.qtd_recursos) FILTER (WHERE fr.recurso_tipo='INTÉRPRETE_LIBRAS'),0) AS interpretes,
       ROUND(
         COALESCE(SUM(fr.qtd_recursos) FILTER (WHERE fr.recurso_tipo='INTÉRPRETE_LIBRAS'),0)::numeric
         / NULLIF(SUM(fm.qtd_matriculas),0), 3
       ) AS interprete_por_aluno
FROM dim_escola e
LEFT JOIN f_matricula_especial fm ON fm.co_entidade = e.co_entidade
LEFT JOIN f_recursos_acessibilidade fr
       ON fr.co_entidade = e.co_entidade AND fr.ano = fm.ano
WHERE fm.cod_def IN ('SURDEZ','DEF_AUDITIVA','SURDOCEGUEIRA')
GROUP BY e.sigla_uf, fm.ano
ORDER
