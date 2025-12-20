# DataFlowBuilder – Inclusão Auditiva na Educação (ETL → PostgreSQL → API → Front → OLAP)

**Objetivo:** integrar dados públicos (INEP, IBGE, PNAD) para analisar a inclusão de alunos com surdez, deficiência auditiva e surdocegueira na educação básica, expondo uma API e um dashboard com indicadores estratégicos (principal: relação intérprete por aluno), seguindo a paleta institucional do Senac e a identidade visual do projeto.

> Arquitetura de alto nível:
> **ETL (Node/TypeScript)** → **PostgreSQL (Docker)** → **API (Express/TS)** → **Front-end (HTML/CSS/Bootstrap/Chart.js)** → **OLAP (SQL com ROLLUP/CUBE)**.

---

## 🔧 Tecnologias

- **Back-end / ETL:** Node.js 20, TypeScript, Express
- **Banco de dados (DW/ROLAP):** PostgreSQL 15 (via Docker Compose v2)
- **Front-end:** HTML, CSS, Bootstrap 5, Chart.js
- **Containerização:** Docker Desktop + WSL2 (Windows)
- **Governança:** README detalhado, evidências de consultas OLAP e versionamento no GitHub

# Senac DataFlowBuilder

![Senac DataFlowBuilder](img/logo1.png)

DataFlowBuilder

API para análise de dados públicos sobre inclusão e acessibilidade na educação.

## Sumário

- [Sobre o Projeto](#sobre-o-projeto)
- [Funcionalidades](#funcionalidades)
- [Paleta de Cores](#paleta-de-cores)
- [Como Executar](#como-executar)
- [Tecnologias](#tecnologias)
- [Fontes de Dados](#fontes-de-dados)
- [Scripts SQL e OLAP](#scripts-sql-e-olap)
- [Autores](#autores)

## Sobre o Projeto

Ferramenta para integrar e analisar dados públicos sobre a inclusão de estudantes com deficiência auditiva, apoiando gestores em decisões mais justas e eficientes.

## Funcionalidades

- Integração e importação de dados externos
- Dashboards responsivos
- Relatórios dinâmicos
- Recomendações automáticas
  http://127.0.0.1:5501/v2/FrontEnd/index.html

## Paleta de Cores

| Nome          | Hex     |
| ------------- | ------- |
| Azul Senac    | #004A8D |
| Laranja       | #F7941D |
| Laranja Claro | #FDC180 |

## Como Executar

1. Clone o repositório
2. Instale dependências com `npm install`
3. Configure o banco de dados MySQL no arquivo `.env`
4. Rode o backend com `node app.js`
5. Abra o `frontend/index.html` no navegador.

> **Sempre no terminal do VS Code, na pasta raiz `Senac_DataFlowBuilder/`.**

1)Subir o banco (PostgreSQL com Docker)
powershell
docker compose -f .\v2\docker\docker-compose.yml up -d
docker ps # deve mostrar dfb_postgres Up e porta 5432

## ✅ Pré-requisitos

- **Windows + VS Code** com terminal PowerShell integrado
- **Docker Desktop** com **WSL2** habilitado

  - Teste no terminal:  
    powershell
    docker --version
    docker compose version

- **Node.js 20+** (para ETL/API)
- **Sem `psql` no Windows?** Tudo aqui usa **`docker exec`** (rodando `psql` dentro do container).

## Tecnologias

FRONT END
-Html + Css + Bootstrap + JavaScript + Chart.js

BACK END

- Node.js + TypeScript + Express

BANCO DE DADOS
-Postgree (Via Docker Compose v2)

## Referências Oficiais

• Docker Desktop + WSL2 no Windows (instalação/uso)

• Compose v2 (use docker compose, não docker-compose)

• INEP – Microdados Censo Escolar (dados abertos)
https://www.gov.br/inep/pt-br/acesso-a-informacao/dados-abertos/microdados/censo-escolar

• IBGE – API de Agregados (SIDRA v3)
https://servicodados.ibge.gov.br/api/docs/agregados

• PNAD Contínua 2022 – Pessoas com Deficiência
https://storymaps.arcgis.com/stories/3bd6ed4338a44cf5b0124a555bcb5490

## Scripts SQL e OLAP

Scripts e exemplos de consultas em `/sql`

## Autores

Projeto Integrador Desenvolvido Pelo Grupo 04 - Curso Tecnólogo em Banco de Dados

[Christiano Miguel Samori de Azevedo](https://github.com/ChristianoMiguelSamorideAzevedo)

[André Felipe Dantas Medeiros](https://github.com/AndreFelipeDantasMedeiros)

[Anderson Belarmino Santana](https://github.com/AndersonBelarminoSantana)

[Fernanda Alvarez Malvino](https://github.com/FernandaAlvarezMalvino)
