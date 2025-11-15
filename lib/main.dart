import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // Aquí va todo el fondo degradado
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.blue, Colors.purple],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),

          // Aqui Agregola ventana
          child: Center(
            child: Container(
              width: 400,
              height: 500,
              color: Colors.white,

              // Memorandum Mental esto como en ccs pero en vez de px loescribes
              // colocando EdgeInsets
              child: const Padding(
                padding: EdgeInsets.all(20),

                // Con este Column voy a poder ir agregando elementos
                child: Column(
                  children: [
                    // Primer input
                    TextField(
                      decoration: InputDecoration(
                        labelText: "Escribe algo",
                        border: OutlineInputBorder(),
                      ),
                    ),
                    // Sugundo input
                    TextField(
                      decoration: InputDecoration(
                        labelText: "Escribe algo",
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
