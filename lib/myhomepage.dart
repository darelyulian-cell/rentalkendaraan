import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // 1. Inisialisasi TextEditingController
  final TextEditingController inputNama = TextEditingController();

  // 2. Best Practice: Hapus controller saat widget dibuang dari memory
  @override
  void dispose() {
    inputNama.dispose();
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
              // Container untuk memberikan batasan lebar dan gaya pada TextField
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
              const SizedBox(height: 16), // Jarak antara TextField dan Button
              ElevatedButton(
                onPressed: () {
                  print(inputNama.text);
                },
                child: const Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}