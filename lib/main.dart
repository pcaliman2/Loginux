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
                    Text(
                      "Registrarse",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: const Color.fromARGB(221, 164, 5, 212),
                      ),
                    ),

                    const SizedBox(height: 30),

                    //  TextFormField Nombre
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: "Nombre completo",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        prefixIcon: Icon(Icons.person),
                      ),
                    ),

                    // espacio entre inputs
                    const SizedBox(height: 20),

                    //  TextFormField Telefono
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: "Teléfono",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        prefixIcon: Icon(Icons.phone),
                      ),
                    ),

                    // espacio entre inputs
                    const SizedBox(height: 20),

                    //  TextFormField email
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: "Email",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        prefixIcon: Icon(Icons.email),
                      ),
                    ),

                    // espacio entre inputs
                    const SizedBox(height: 20),

                    //  TextFormField Password
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: "Password",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        prefixIcon: Icon(Icons.lock),
                      ),
                    ),

                    // espacio entre inputs
                    const SizedBox(height: 20),

                    //  TextFormField Confrmar Password
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: "Confirmma tu Password",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        prefixIcon: Icon(Icons.lock_outline),
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
