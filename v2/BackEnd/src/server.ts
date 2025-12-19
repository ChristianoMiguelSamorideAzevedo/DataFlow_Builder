import express from 'express';
import alunosRoutes from './routes/alunosRoutes';

const app = express();
app.use(express.json());
app.use('/api', alunosRoutes);

app.listen(3000, () => console.log('API rodando na porta 3000'));
