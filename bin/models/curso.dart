import 'dart:convert';

class Curso {
  int id;
  String nome;
  
  Curso({
    required this.id,
    required this.nome,
  });
  

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'nome': nome,
    };
  }

  factory Curso.fromMap(Map<String, dynamic> map) {
    return Curso(
      //id: map['id']?.toInt() ?? 0,
      id: map['id'] ?? 0,
      nome: map['nome'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Curso.fromJson(String source) => Curso.fromMap(json.decode(source));

  @override
  String toString() => 'Curso(id: $id, nome: $nome)';
}

