import 'package:flutter/material.dart';
class Buttonedit extends StatelessWidget {
  final VoidCallback onPressed;
  const Buttonedit({super.key , required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.width * 0.1,
      width: MediaQuery.of(context).size.width ,
      child: ElevatedButton(onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12) ,
            ),
            elevation: 3
          ),
          child: Text("Update Task" , style: TextStyle(color: Colors.white , fontWeight: FontWeight.bold , fontSize: MediaQuery.of(context).size.width*0.04),)),
    );
  }
}
