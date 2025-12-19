const express = require('express');
const cors = require('cors');
const poll = require('./db');

const app = express();
const PORT = 3000;

// Middlewares
app.use(cors());
app.use(express.json());

// Rota de teste
app.get('/status', (req, res) => {
  res.json({ ok: true, message: 'API DataFlowBuilder rodando 🚀' });
});

app.get('/db-test', async (req, res) => {
  try {
    const result = await pool.query('SELECT NOW() AS agora');
    res.json({ ok: true, dbTime: result.rows[0].agora });
  } catch (err) {
    console.error(err);
    res.status(500).json({ ok: false, error: 'Erro ao conectar no banco' });
  }
});

// Sobe o servidor
app.listen(PORT, () => {
  console.log(`Servidor ouvindo na porta ${PORT}`);
});
