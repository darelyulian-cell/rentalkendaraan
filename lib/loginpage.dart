import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // Pembuatan Variabel Yang Akan Dipakai
  TextEditingController inputNama = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Nama App Kalian"),
        backgroundColor: const Color.fromARGB(0, 50, 145, 145),
      ),
      backgroundColor: const Color.fromARGB(245, 19, 222, 124),
      body: Column(
        children: [
          Center(
            child: Image(
              image: const AssetImage('assets/logo.png'),
              width: 200,
              height: 200,
            ),
          ),
          Center(
            child: Container(
              width: 300,
              child: TextFormField(
                // Dekorasi untuk TextFormField
                decoration: const InputDecoration(
                  fillColor: Color.fromARGB(255, 92, 89, 83),
                  hintText: 'Masukan Nama Kamu',
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(40)),
                  ),
                ),
                // kontroler untuk ...
                controller: inputNama,
                // Ketika Dikirim nanti
                onFieldSubmitted: (values) {
                  // Logic
                  inputNama.text = values;
                },
              ),
            ),
          ),
          // untuk kasih jarak antar widget
          const Padding(padding: EdgeInsets.all(16)),

          // Tombol
          ElevatedButton(
            child: const Text("Tampilkan Nama"),
            onPressed: () {
              // Logic
              print(inputNama.text);
              Navigator.pushReplacementNamed(context, "/home");
            },
          ),
        ],
      ),
    );
  }
}