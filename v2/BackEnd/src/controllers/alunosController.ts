import { Request, Response } from 'express';

export const listarAlunos = (req: Request, res: Response) => {
  res.json({ alunos: [{ id: 1, nome: 'João' }] });
};
