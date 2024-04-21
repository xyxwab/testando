// controle do map de usuarios //

import 'package:flutter/material.dart';
import 'package:testes/data/dummy_users.dart';
import 'package:testes/models/user.dart';

class Users with ChangeNotifier {
  final Map<String, User> _items = {...dummyusers};

  List<User> get all {
    return [..._items.values];
  }

  int get count {
    return _items.length;
  }
}
