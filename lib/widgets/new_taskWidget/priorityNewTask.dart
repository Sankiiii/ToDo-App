import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
class Prioritynewtask extends StatelessWidget {
  final String title;
  final Color backColor;
  final Color textColor;
  const Prioritynewtask({super.key , required this.title , required this.textColor , required this.backColor});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child:  Container(
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
        height: MediaQuery.of(context).size.width *0.1,
        width: MediaQuery.of(context).size.width * 0.25,

        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20) ,
          color: backColor
        ),
        child: Text(title , style: TextStyle(color: textColor , fontSize:  MediaQuery.of(context).size.width *0.05),),

      )
    );
  }
}
