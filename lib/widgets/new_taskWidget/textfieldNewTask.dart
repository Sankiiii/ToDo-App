import 'package:flutter/material.dart';
class Textfieldnewtask extends StatelessWidget {
  final TextEditingController controller;
  final String title;
  final double num;

   Textfieldnewtask({super.key , required this.controller , required this.title , required this.num});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context , constraint){
        double size = constraint.maxWidth;
      return SizedBox(
        height: size * num,
        child: TextField(
          minLines: 2,
          maxLines: 5,
          controller: controller,
          decoration: InputDecoration(
            hintText: title,
            hintStyle: TextStyle(color: Colors.black54 , fontSize: size*0.05) ,
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12) ,
              borderSide: BorderSide(
                color: Colors.black12 ,
                width: 1
              )
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                width: 2 ,
                color: Colors.blue
              ),
              borderRadius: BorderRadius.circular(10)
            )
          ),

        ),
      );}
    );
  }
}
