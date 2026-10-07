import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  final String namaUser;
  const MyHomePage({super.key, required this.namaUser});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController inputNama = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Selamat Datang, ${widget.namaUser}'),
        backgroundColor: const Color.fromARGB(145, 152, 152, 153),
      ),
      backgroundColor: const Color.fromARGB(245, 228, 230, 229),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/logo.png',
              width: 200,
              height: 200,
            ),
            SizedBox(
              width: 300,
              child: TextFormField(
                controller: inputNama,
                decoration: const InputDecoration(
                  fillColor: Color.fromARGB(255, 207, 207, 206),
                  hintText: 'Masukkan Nama',
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(40)),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                print('Input Nama: ${inputNama.text}');
              },
              child: const Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}