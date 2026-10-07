import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController inputUsername = TextEditingController();
  final TextEditingController inputPassword = TextEditingController();

  String errorMessage = '';

  void handleLogin() {
    String username = inputUsername.text.trim();
    String password = inputPassword.text.trim();

    // Cetak ke terminal
    print('=== DATA LOGIN ===');
    print('Username : $username');
    print('Password : $password');
    print('==================');

    // a. Kalau username / password kosong -> Tidak bisa routing
    if (username.isEmpty || password.isEmpty) {
      setState(() {
        errorMessage = 'Username dan Password tidak boleh kosong!';
      });
      return;
    }

    // b. Kalau username = admin dan password = 12345 -> Pindah ke homepage & tidak bisa kembali ke login
    if (username == 'admin' && password == '12345') {
      setState(() {
        errorMessage = '';
      });
      Navigator.pushReplacementNamed(context, '/home');
    } else {
      setState(() {
        errorMessage = 'Username atau Password salah!';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(245, 142, 143, 142),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // d. Memanggil ui ux.png dari asset/img/
              Image.asset(
                'asset/logo.png',
                width: 180,
                height: 180,
                errorBuilder: (context, error, stackTrace) {
                  return const Icon(
                    Icons.image_not_supported,
                    size: 100,
                    color: Colors.white,
                  );
                },
              ),
              const SizedBox(height: 16),
              const Text(
                'LOGIN',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 20),

              // Input Username
              SizedBox(
                width: 300,
                child: TextFormField(
                  controller: inputUsername,
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.person), // c. Icon muncul
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
                    prefixIcon: Icon(Icons.lock), // c. Icon muncul
                    fillColor: Color.fromARGB(255, 207, 207, 206),
                    hintText: 'Masukkan Password',
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(40)),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 12),

              // Pesan Peringatan
              if (errorMessage.isNotEmpty)
                Text(
                  errorMessage,
                  style: const TextStyle(
                    color: Colors.redAccent,
                    fontWeight: FontWeight.bold,
                  ),
                ),

              const SizedBox(height: 16),

              // Tombol Login
              ElevatedButton(
                onPressed: handleLogin,
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 40,
                    vertical: 12,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: const Text('Login'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}