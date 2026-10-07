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
        backgroundColor: const Color.fromARGB(145, 0, 50, 145),
      ),
      backgroundColor: const Color.fromARGB(245, 19, 222, 124),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: 300,
              child: TextFormField(
                controller: inputNama,
                decoration: const InputDecoration(
                  fillColor: Colors.orange,
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