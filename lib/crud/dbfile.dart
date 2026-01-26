import 'dart:convert';

import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:todo_app/model/todoModel.dart';
import 'package:todo_app/model/userModel.dart';

class TodoDatabase {
  static final TodoDatabase instance = TodoDatabase._init();
  static Box<Map>? _box;
  TodoDatabase._init();
  static Future<void> init() async {
    await Hive.initFlutter();
    _box = await Hive.openBox<Map>('todoBox');
  }

  Box<Map> get box => _box!;

  Future<usermodel> signupUser(usermodel userModel) async {
    final int id = await box.add(userModel.toJson());
    return userModel.copyWith(userId: id);
  }

  Future<bool> isEmailTaken(String email) async {
    return box.values.any((user) {
      return user[UserModel.userEmail] == email;
    });
  }

  Future<usermodel?> loginUser(String email, String password) async {
    for (final user in box.values) {
      if (user[UserModel.userEmail] == email &&
          user[UserModel.userPassword] == password) {
        return usermodel.fromJson(Map<String, dynamic>.from(user));
      }
    }
    return null;
  }

  Future<todomodel> insertTodo(todomodel tdModel , int userid) async{
    final id = await box.add(tdModel.toJson());
    return tdModel.copyWith(userId : userid);
  }


  Future<List<todomodel>?> readTodo() async{
    return box.values.map((json) => todomodel.fromJson(Map<String , dynamic>.from(json))).toList();
  }



}

