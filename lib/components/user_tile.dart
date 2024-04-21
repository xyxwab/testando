import 'package:flutter/material.dart';
import 'package:testes/models/user.dart';

class UserTile extends StatelessWidget {
  const UserTile({super.key, required this.user});

  final User user;

  @override
  Widget build(BuildContext context) {
    final avatar = user.avatarUrl.isEmpty
        ? const CircleAvatar(child: Icon(Icons.person))
        : CircleAvatar(backgroundImage: NetworkImage(user.avatarUrl));
    return ListTile(
      leading: avatar,
      title: Text(user.name),
      subtitle: Text(user.email),
      trailing: SizedBox(
        width: 100,
        child: Row(
          children: <Widget>[
            IconButton(
              onPressed: () {},
              color: Colors.orange,
              icon: const Icon(Icons.edit),
            ),
            IconButton(
              onPressed: () {},
              color: Colors.red,
              icon: const Icon(Icons.delete),
            ),
          ],
        ),
      ),
    );
  }
}
