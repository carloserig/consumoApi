import 'dart:convert';

import 'curso.dart';

class Aluno {
  String? id;
  String name;
  String password;
  List<Curso> cursos;
  
  Aluno({
    this.id,
    required this.name,
    required this.password,
    required this.cursos,
  });


  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'password': password,
      'cursos': cursos.map((curso) => curso.toMap()).toList(),
    };
  }

  factory Aluno.fromMap(Map<String, dynamic> map) {
    return Aluno(
      id: map['id'] ?? '',
      name: map['name'] ?? '',
      password: map['password'] ?? '',
      cursos: List<Curso>.from(map['cursos']?.map((curso) => Curso.fromMap(curso))),
    );
  }

  String toJson() => json.encode(toMap());

  factory Aluno.fromJson(String source) => Aluno.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Aluno(id: $id, name: $name, password: $password, cursos: $cursos)';
  }
}
