import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // Controller untuk nama dan password
  final TextEditingController inputNama = TextEditingController();
  final TextEditingController inputPassword = TextEditingController();

  @override
  void dispose() {
    inputNama.dispose();
    inputPassword.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('rentalkendaraan'),
      ),
      backgroundColor: const Color.fromARGB(185, 93, 120, 122),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Input Nama
              Container(
                width: 250,
                color: const Color.fromARGB(255, 91, 92, 94),
                child: TextField(
                  controller: inputNama,
                  style: const TextStyle(color: Colors.white),
                  decoration: const InputDecoration(
                    hintText: 'Masukkan Nama',
                    hintStyle: TextStyle(color: Colors.white70),
                    border: OutlineInputBorder(),
                  ),
                ),
              ),

              const SizedBox(height: 16),

              // Input Password
              Container(
                width: 250,
                color: const Color.fromARGB(255, 91, 92, 94),
                child: TextField(
                  controller: inputPassword,
                  obscureText: true, // Sembunyikan karakter password
                  style: const TextStyle(color: Colors.white),
                  decoration: const InputDecoration(
                    hintText: 'Masukkan Password',
                    hintStyle: TextStyle(color: Colors.white70),
                    border: OutlineInputBorder(),
                  ),
                ),
              ),

              const SizedBox(height: 16),

              // Tombol Login
              ElevatedButton(
                onPressed: () {
                  print('Nama: ${inputNama.text}');
                  print('Password: ${inputPassword.text}');
                },
                child: const Text('Login'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}