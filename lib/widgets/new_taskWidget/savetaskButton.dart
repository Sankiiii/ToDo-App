import 'package:flutter/material.dart';
class Savetaskbutton extends StatelessWidget {
  final VoidCallback onPressed;
  const Savetaskbutton({super.key , required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context , constraint){
        double size = constraint.maxWidth;
      return  SizedBox(
        height: size * 0.1,
        width: size * 0.9,
        child: ElevatedButton(onPressed: onPressed,
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blue ,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusGeometry.circular(12) ,

              ),
            ),
            child: Text("Save Task" , style: TextStyle(color: Colors.white , fontWeight: FontWeight.w500 , fontSize: size * 0.04),)),
      );
      },
    );
  }
}
