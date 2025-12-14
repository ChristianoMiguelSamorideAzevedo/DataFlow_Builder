# Estrutura do Projeto

DataFlowBuilder/
├─ backend/
│  ├─ app.js
│  ├─ db.js
│  ├─ routes/
│  │  ├─ import.js
│  │  ├─ analysis.js
│  │  ├─ reports.js
│  ├─ controllers/
│  │  ├─ importController.js
│  │  ├─ analysisController.js
│  │  ├─ reportsController.js
│  ├─ services/
│  │  ├─ inepService.js
│  │  ├─ ibgeService.js
│  │  ├─ olapService.js
│  ├─ utils/
│  │  ├─ csvParser.js
│  │  ├─ recommendations.js
│  ├─ package.json
│  ├─ .env.example
├─ frontend/
│  ├─ index.html
│  ├─ assets/
│  │  ├─ style.css
│  │  ├─ logo1.png
│  ├─ js/
│  │  ├─ charts.js
│  │  ├─ api.js
├─ sql/
│  ├─ ddl.sql
│  ├─ dml_sample.sql
│  ├─ olap_examples.sql
├─ README.md
