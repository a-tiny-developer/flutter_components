import 'package:flutter/material.dart';

class ListView1Screen extends StatelessWidget {
  const ListView1Screen({Key? key}) : super(key: key);

  final options = const <String>[
    'Megaman',
    'Metal Gear',
    'Super Smash',
    'Final Fantasy',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('ListView Type 1'),
      ),
      body: ListView(
        children: [
          ...options.map(
            (e) => ListTile(
              trailing: const Icon(Icons.arrow_forward_ios_outlined),
              title: Text(e),
            ),
          ),
        ],
      ),
    );
  }
}
