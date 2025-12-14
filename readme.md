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

## Paleta de Cores

| Nome         | Hex      |
|--------------|----------|
| Azul Senac   | #004A8D  |
| Laranja      | #F7941D  |
| Laranja Claro| #FDC180  |

## Como Executar

1. Clone o repositório
2. Instale dependências com `npm install`
3. Configure o banco de dados MySQL no arquivo `.env`
4. Rode o backend com `node app.js`
5. Abra o `frontend/index.html` no navegador

## Tecnologias

- Node.js
- Express
- MySQL
- Bootstrap
- Chart.js

## Fontes de Dados

INEP – Microdados Censo Escolar:
https://www.gov.br/inep/pt-br/acesso-a-informacao/dados-abertos/microdados/censo-escolar
IBGE – API Agregados (SIDRA):
https://servicodados.ibge.gov.br/api/docs/agregados
PNAD Contínua – Pessoas com Deficiência:
https://storymaps.arcgis.com/stories/3bd6ed4338a44cf5b0124a555bcb5490

## Scripts SQL e OLAP

Scripts e exemplos de consultas em `/sql`

## Autores

Projeto Integrador Desenvolvido Pelo Grupo 04 - Curso Tecnólogo em Banco de Dados  
[Christiano Miguel Samori de Azevedo](https://github.com/ChristianoMiguelSamorideAzevedo)

[André Felipe Dantas Medeiros](https://github.com/AndreFelipeDantasMedeiros)

[Anderson Belarmino Santana](https://github.com/AndersonBelarminoSantana)

[Fernanda Alvarez Malvino](https://github.com/FernandaAlvarezMalvino)
