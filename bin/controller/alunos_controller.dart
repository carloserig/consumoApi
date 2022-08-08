import '../models/aluno.dart';
import '../models/curso.dart';
import '../repositories/alunos_repository.dart';

class AlunosController {
  final _alunosRepository = AlunosRepository();

  Future<void> findAll() async {
    final alunos = await _alunosRepository.findAll();
    alunos.forEach(print);
  }

  Future<void> findById(String id) async {
    final aluno = await _alunosRepository.findById(id);
    print(aluno);
  }

  Future<void> update() async {
    final aluno = await _alunosRepository.findById('1');
    aluno.name = 'Eduardo';
    await _alunosRepository.update(aluno);

    final alunoAlterado = await _alunosRepository.findById('1');
    print(alunoAlterado.toString());
  }

  Future<void> insert() async {
    final aluno = Aluno(
        name: 'Heloisa Erig', 
        password: 'teste123', 
        cursos: [Curso(
                  id: 3, 
                  nome: 'HTML Avançado'),
                ],
      );
    _alunosRepository.insert(aluno);  
  }
}  