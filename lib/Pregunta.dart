import 'dart:convert';

class Pregunta {
  String categoria;
  String frasePregunta;
  String respCorrecta;
  //List<String> respIncorrecta;


  Pregunta({
    required this.categoria,
    required this.frasePregunta,
    required this.respCorrecta,
    //required this.respIncorrecta,
  });

  factory Pregunta.fromJson(Map<String, dynamic> json) {
    return Pregunta(
      categoria : json['category'],
      frasePregunta : json['question'],
      respCorrecta : json['correct_answer'],
      //respIncorrecta : List.of(json['incorrect_answers']),
    );
  }
}