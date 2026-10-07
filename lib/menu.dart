import 'package:flutter/material.dart';
import 'myhomepage.dart';

class MenuPage extends StatelessWidget {
  final String namaUser;

  const MenuPage({super.key, required this.namaUser});

  // Helper widget untuk membuat tombol menu seragam
  Widget _buildMenuButton({
    required String text,
    required VoidCallback onPressed,
    Color textColor = Colors.black87,
  }) {
    return Container(
      width: 260,
      height: 48,
      margin: const EdgeInsets.symmetric(vertical: 6),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.white,
          foregroundColor: textColor,
          elevation: 2,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25),
          ),
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: textColor,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFC8C8C8),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(vertical: 24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Header / Title "Menu Utama"
                Container(
                  width: 260,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  margin: const EdgeInsets.only(bottom: 16),
                  decoration: BoxDecoration(
                    color: const Color(0xFFE0E0E0),
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 4,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                  child: const Center(
                    child: Text(
                      'Menu Utama',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                  ),
                ),

                // Daftar Tombol Menu
                _buildMenuButton(text: 'Tambah Data', onPressed: () {}),
                _buildMenuButton(text: 'Lihat Data', onPressed: () {}),
                _buildMenuButton(text: 'Ubah Data', onPressed: () {}),
                _buildMenuButton(text: 'Hapus Data', onPressed: () {}),
                _buildMenuButton(text: 'Hitung data', onPressed: () {}),
                _buildMenuButton(text: 'Cetak Data', onPressed: () {}),
                _buildMenuButton(text: 'Sewa', onPressed: () {}),

                const SizedBox(height: 12),

                // Tombol Logout khusus warna merah
                _buildMenuButton(
                  text: 'Logout',
                  textColor: Colors.red.shade800,
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MyHomePage(title: 'Rental Kendaraan'),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}