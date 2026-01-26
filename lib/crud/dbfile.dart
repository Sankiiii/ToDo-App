import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:todo_app/model/userModel.dart';

class TodoDatabase{
  static final TodoDatabase instance = TodoDatabase._init();
  static Box? _box;

  TodoDatabase._init();


  Future<Box> database() async{
    if(_box != null) return _box!;
    await Hive.initFlutter();
    _box = await Hive.openBox('todoBox');
    return _box!;
  }

  Future<usermodel> signupUser(usermodel userModel) async {
    final box = await database();

    final int id = await box.add(userModel.toJson());

    return userModel.copyWith(userId: id);
  }

  Future<bool> isEmailTaken(String email) async{
    final box = await database();
    return box.values.any((user){
      final data = Map<String , dynamic>.from(user);
      return data[UserModel.userEmail] == email;
    });

  }

  Future<usermodel?> loginUser(String email , String password) async{
    final box = await database();
    for(var user in box.values) {
      final data = Map<String , dynamic>.from(user);
      if(data[UserModel.userEmail] == email && data[UserModel.userPassword] == password){
        return usermodel.fromJson(data);
      }
    }
    return null;
  }

}
