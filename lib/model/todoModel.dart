import 'package:todo_app/model/userModel.dart';

class TodoModel{
  static String tableName2 = "todoTable";
  static String userId = "userId";
  static String title = "title";
  static String content = "content";
  static String createdAt = "createdAt";
  static String completed = "completed";
}

class todomodel{
  final int? userId;
  final String title;
  final String content;
  final DateTime createdAt;
  final bool completed;

  todomodel({
    this.userId ,
    required this.title ,
    required this.content ,
    required this.createdAt ,
    required this.completed
});

  todomodel copyWith({
    int? userId ,
    String? title ,
    String? content ,
    DateTime? createdAt ,
    bool? completed
}){
    return todomodel(
      userId: userId ?? this.userId,
        title: title ?? this.title,
        content: content ?? this.content,
        createdAt: createdAt ?? this.createdAt,
        completed: completed ?? this.completed
    );
  }


  factory todomodel.fromJson(Map<String , dynamic>json) {
    return todomodel(
        userId: json[TodoModel.userId] as int,
        title: json[TodoModel.title] as String,
        content: json[TodoModel.content] as String,
        createdAt: DateTime.parse(json[TodoModel.createdAt]),
        completed: json[TodoModel.completed] as bool);
}

Map<String , dynamic> toJson() {
    return {
      TodoModel.userId : userId ,
      TodoModel.title : title ,
      TodoModel.content : content ,
      TodoModel.createdAt : createdAt.toIso8601String(),
      TodoModel.completed : completed
    };

  }
}