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

          // Aquí agrego la ventana
          child: Center(
            child: Container(
              width: 400,
              height: 500,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20), // ⭐ Bordes curvos
              ),

              // Memorandum Mental esto como en ccs pero en vez de px loescribes
              // colocando EdgeInsets
              child: Padding(
                padding: EdgeInsets.all(20),

                // Con este Column puedo ir agregando elementos
                child: Column(
                  children: [
                    //  TextFormField 01
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: "Nuevo input con TextFormField",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),

                    // espacio entre inputs
                    const SizedBox(height: 20),

                    //  TextFormField 02
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: "Nuevo input con TextFormField",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),

                    // espacio entre inputs
                    const SizedBox(height: 20),

                    //  TextFormField 03
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: "Nuevo input con TextFormField",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),

                    // espacio entre inputs
                    const SizedBox(height: 20),

                    //  TextFormField 04
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: "Nuevo input con TextFormField",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),

                    // espacio entre inputs
                    const SizedBox(height: 20),

                    //  TextFormField 05
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: "Nuevo input con TextFormField",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                    ),

                    // espacio entre inputs
                    const SizedBox(height: 20),
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
