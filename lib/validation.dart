import 'package:flutter/material.dart';

class Lat01 extends StatefulWidget {
  const Lat01({super.key});

  @override
  State<Lat01> createState() => _Lat01State();
}

class _Lat01State extends State<Lat01> {
  final formKey = GlobalKey<FormState>();
  final tecName = TextEditingController();
  final tecNim = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[200],
      appBar: AppBar(
        title: const Text('Lat01'),
        backgroundColor: Colors.deepOrange,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              TextFormField(
                
                style: const TextStyle(color: Colors.black),
                controller: tecName,
                keyboardType: TextInputType.name,
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.person_outlined),
                    labelText: 'Nama', hintText: 'Masukan nama'),
                validator: (value) => value == null || value.isEmpty
                    ? 'Nama nya masih kosong'
                    : null,
              ),
              const SizedBox(
                height: 30,
              ),
              TextFormField(
                controller: tecNim,
                keyboardType: TextInputType.number,
                decoration:
                    const InputDecoration(labelText: 'NIM', hintText: 'Masukan NIM'),
                validator: (value) => value == null || value.isEmpty
                    ? 'NIM nya masih kosong'
                    : null,
              ),
              const SizedBox(
                height: 30,
              ),
              FilledButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    String name = tecName.text.toString();
                    String nim = tecNim.text.toString();
                    ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Nama: ${name}NIM: $nim')));
                  }
                },
                child: const Text('SUBMIT'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
