import 'package:flutter/material.dart';
class Textfieldedit extends StatelessWidget {
  final TextEditingController controller;
  final String title;
  const Textfieldedit({super.key , required this.controller , required this.title});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context , constraint) {
        double size = constraint.maxWidth;
        return TextField(
          maxLines: 4,
          minLines: 2,
          controller: controller,
          decoration: InputDecoration(
              hintText: title,
              hintStyle: TextStyle(color: Colors.black45),
              contentPadding: EdgeInsets.all(12),
              enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(
                  color: Colors.black ,
                  width: 1
                )
          ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.blue ,
                width: 2
              ) ,
              borderRadius: BorderRadius.circular(10)
            )
          ),
        );},
    );
  }
}
