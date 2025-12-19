import { Router } from 'express';
import { listarAlunos, criarAluno } from '../controllers/alunosController';

const router = Router();

router.get('/alunos', listarAlunos);
router.post('/alunos', criarAluno);

export default router;
