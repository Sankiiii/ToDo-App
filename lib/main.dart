import 'package:flutter/material.dart';
import 'package:todo_app/crud/dbfile.dart';
import "package:todo_app/screens/home_page.dart";

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await TodoDatabase.init();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.yellow),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
