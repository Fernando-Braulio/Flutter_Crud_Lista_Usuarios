import 'package:flutter/material.dart';
import 'package:flutter_crud_lista_usuario/Data/Dummy_Users.dart';
import 'package:flutter_crud_lista_usuario/Models/User.dart';

class UsersProvider with ChangeNotifier {
  final Map<String, User> _items = {...DUMMY_USERS};

  List<User> get getAll {
    return [..._items.values];
  }

  int get count {
    return _items.length;
  }

  User byIndex(int i) {
    return _items.values.elementAt(i);
  }
}
