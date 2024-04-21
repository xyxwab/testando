import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:testes/provider/users.dart';
import 'package:testes/views/user_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Users(),
      child: MaterialApp(
        title: 'PROVIDANDO',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          useMaterial3: true,
          primarySwatch: Colors.blue,
        ),
        home: const UserList(),
      ),
    );
  }
}
