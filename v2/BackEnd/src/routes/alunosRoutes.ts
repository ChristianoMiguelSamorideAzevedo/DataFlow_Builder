import { Router } from 'express';
import { listarAlunos } from '../controllers/alunosController';

const router = Router();

router.get('/alunos', listarAlunos);

export default router;
