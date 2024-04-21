import 'package:flutter/material.dart';
import 'package:testes/components/user_tile.dart';
import 'package:testes/data/dummy_users.dart';

class UserList extends StatelessWidget {
  const UserList({super.key});

  @override
  Widget build(BuildContext context) {
    final users = {...dummyusers}; //spreading operator (clone)
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de usuários'),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: users.length,
        itemBuilder: ((context, index) =>
            UserTile(user: users.values.elementAt(index))),
      ),
    );
  }
}
