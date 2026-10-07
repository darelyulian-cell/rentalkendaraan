import 'package:flutter/material.dart';
import 'myhomepage.dart';

class HomePage extends StatelessWidget {
  final String namaUser;

  const HomePage({super.key, required this.namaUser});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menu Utama'),
        backgroundColor: const Color.fromARGB(145, 0, 50, 145),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {
              // Logout kembali ke halaman Login
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const MyHomePage(title: 'Rental Kendaraan')),
              );
            },
          ),
        ],
      ),
      backgroundColor: Colors.grey[200],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Selamat Datang, $namaUser!',
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text('Ini adalah Halaman Utama Rental Kendaraan'),
          ],
        ),
      ),
    );
  }
}