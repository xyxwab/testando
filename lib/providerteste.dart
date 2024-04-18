import 'package:flutter/material.dart';

class UserProvider extends ChangeNotifier {
  String userName;

  //Construtor da classe UserProvider
  UserProvider({this.userName = 'NOMEINICIAL'});

  void changeUserName({required String newUserName}) async {
    userName = newUserName;
    notifyListeners();
  }
}
