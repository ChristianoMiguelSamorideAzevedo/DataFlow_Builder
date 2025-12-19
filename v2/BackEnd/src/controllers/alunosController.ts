import { Request, Response } from 'express';

let alunos = [{ id: 1, nome: 'João' }];

export const listarAlunos = (req: Request, res: Response) => {
  res.json({ alunos });
};

export const criarAluno = (req: Request, res: Response) => {
  const { nome } = req.body;
  const novoAluno = { id: alunos.length + 1, nome };
  alunos.push(novoAluno);
  res.status(201).json(novoAluno);
};

