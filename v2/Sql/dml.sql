INSERT INTO dim_tempo(ano) VALUES (2023) ON CONFLICT DO NOTHING;
INSERT INTO dim_tempo(ano) VALUES (2024) ON CONFLICT DO NOTHING;

INSERT INTO dim_deficiencia(cod_def, desc_def) VALUES
('SURDEZ', 'Surdez'),
('DEF_AUDITIVA', 'Deficiência Auditiva'),
('SURDOCEGUEIRA', 'Surdocegueira');
