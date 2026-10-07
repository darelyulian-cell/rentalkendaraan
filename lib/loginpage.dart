import 'package:flutter/material.dart';
import 'myhomepage.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController inputUsername = TextEditingController();
  final TextEditingController inputPassword = TextEditingController();

  void handleLogin() {
    // Cetak ke terminal
    print('=== DATA LOGIN ===');
    print('Username : ${inputUsername.text}');
    print('Password : ${inputPassword.text}');
    print('==================');

    // Pindah ke file myhomepage.dart
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => MyHomePage(namaUser: inputUsername.text),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(245, 142, 143, 142),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/logo.png',
              width: 500,
              height: 300,
            ),
            const Text(
              'LOGIN',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 24),
            
            // Input Username
            SizedBox(
              width: 300,
              child: TextFormField(
                controller: inputUsername,
                decoration: const InputDecoration(
                  fillColor: Color.fromARGB(255, 207, 207, 206),
                  hintText: 'Masukkan Username',
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(40)),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 12),

            // Input Password
            SizedBox(
              width: 300,
              child: TextFormField(
                controller: inputPassword,
                obscureText: true,
                decoration: const InputDecoration(
                  fillColor: Color.fromARGB(255, 207, 207, 206),
                  hintText: 'Masukkan Password',
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(40)),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Tombol Login
            ElevatedButton(
              onPressed: handleLogin,
              child: const Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}