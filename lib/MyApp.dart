import 'package:flutter/material.dart';

void main() { runApp(MyApp()); }

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int puntos = 0; // Inicializa los puntos en 0

  void sumarPuntos(int cantidad) {
    setState(() {
      puntos += cantidad; // Suma la cantidad de puntos ganados
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Trivial newtec',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Trivial'),
        ),
        body: Center (
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Puntos: $puntos', // Muestra la cantidad de puntos
                style: TextStyle(fontSize: 24),
              ),
              ElevatedButton(
                onPressed: () {
                  // Simula ganar puntos al presionar un botón
                  sumarPuntos(10); // Puedes cambiar la cantidad de puntos ganados
                },
                child: Text('Ganar puntos'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

