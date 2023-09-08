import 'package:flutter/material.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<MyApp> {
  int puntos = 0; // Inicializa los puntos en 0

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          ],
        ),
      ),
    );
  }
}
