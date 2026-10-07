import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // Pembuatan Variabel Yang Akan Dipakai
  TextEditingController inputNama = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Nama App Kalian"),
        backgroundColor: Color.fromRGBO(0, 50, 145, 145),
      ),
      //Color.fromRGBO( opacity, red, gren, blue)
      backgroundColor: Color.fromARGB(245, 19, 222, 124),
      body: Column(
        children: [
          Center(
            child: Container(
              width: 300,
              child: TextFormField(
                // Dekorasi untuk TextFormField
                decoration: InputDecoration(
                  fillColor: Colors.orange,
                  hintText: 'Masukan Nama Kamu',
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(40)),
                  ),
                ),
                // kontroller untuk ...
                controller: inputNama,
                // Ketika Dikirim nanti
                onFieldSubmitted: (values) {
                  // isi apasaja
                  inputNama.text = values;
                },
              ),
            ),
          ),

          //untuk kasih jarak antar widget
          Padding(
            padding: EdgeInsets.all(16)
          ),

          // Tombol
          ElevatedButton(
            child: Text("Tampilkan Nama"),
            onPressed: () {
              print(inputNama.text);
            },
          ),
        ],
      ),
    );
  }
}