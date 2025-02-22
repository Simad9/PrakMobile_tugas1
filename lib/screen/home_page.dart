import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _input = TextEditingController();
  int jumlah = 0;

  void increment() {
    setState(() {
      jumlah = int.tryParse(_input.text) ?? 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text('Tugas 1 Prak Mobile'),
        actions: [
          IconButton(
            icon: const Icon(Icons.person),
            onPressed: () {
              showDialog(
                context: context,
                builder: (context) {
                  return _dialog();
                },
              );
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Text("Silahkan masukan angka untuk melakukan perulangan"),
              SizedBox(height: 20),
              TextField(
                keyboardType: TextInputType.number,
                controller: _input,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Masukan angka',
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                child: Text('Submit'),
                onPressed: () => increment(),
              ),
              SizedBox(height: 20),
              ListView.builder(
                shrinkWrap: true,
                itemCount: jumlah == 0 ? 1 : jumlah,
                itemBuilder: (context, index) {
                  return _foto();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _foto() {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          Image.asset('assets/kucing.jpg', width: 200, height: 200),
          SizedBox(height: 10),
        ],
      ),
    );
  }

  Widget _dialog() {
    return AlertDialog(
      title: const Text('Tentang Saya'),
      content: const Text('Wijdan Akhmad S / 123220010 / Prak Mobile IF-D'),
      actions: [
        TextButton(
          child: const Text('OK'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ],
    );
  }
}
