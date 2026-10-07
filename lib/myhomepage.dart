import 'package:flutter/material.dart';
import 'menu.dart';

class MyHomePage extends StatefulWidget {
  final String title;
  const MyHomePage({super.key, required this.title});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController inputNama = TextEditingController();
  final TextEditingController inputPassword = TextEditingController();

  @override
  void dispose() {
    inputNama.dispose();
    inputPassword.dispose();
    super.dispose();
  }

  void handleLogin() {
    String nama = inputNama.text;
    String password = inputPassword.text;

    if (nama.isNotEmpty && password.isNotEmpty) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => HomePage(namaUser: nama),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: const Color.fromARGB(145, 0, 50, 145),
      ),
      backgroundColor: const Color.fromARGB(245, 19, 222, 124),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: SizedBox(
              width: 300,
              child: TextFormField(
                controller: inputNama,
                decoration: const InputDecoration(
                  fillColor: Colors.orange,
                  hintText: 'Masukkan Nama Kamu',
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(40)),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 12),
          Center(
            child: SizedBox(
              width: 300,
              child: TextFormField(
                controller: inputPassword,
                obscureText: true,
                decoration: const InputDecoration(
                  fillColor: Colors.orange,
                  hintText: 'Masukkan Password',
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(40)),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: handleLogin,
            child: const Text("Login"),
          ),
        ],
      ),
    );
  }
}