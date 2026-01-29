import 'package:flutter/material.dart';
class Circularprogrssbar extends StatelessWidget {
  const Circularprogrssbar({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context , constraints){
        double size = constraints.maxWidth * 0.45;

      return Stack(
          alignment: Alignment.center,
          children: [
            SizedBox(
              height: size *2,
              width: size *2,
              child: CircularProgressIndicator(
                value: 0.25,
                valueColor: AlwaysStoppedAnimation(Colors.blue),
                backgroundColor: Colors.grey,
                strokeWidth: size * 0.1,
              ),
            ),
            Center(
                child: Text("25 %" ,
                  style: TextStyle(
                    fontSize: size * 0.50,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),)  )
          ]
      );}
    );
  }
}
