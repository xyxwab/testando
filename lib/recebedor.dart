import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:testes/providerteste.dart';

class Recebedor extends StatelessWidget {
  const Recebedor({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RECEBEDOR'),
      ),
      body: Center(
        child: Text(
          context.watch<UserProvider>().userName,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
      ),
    );
  }
}
