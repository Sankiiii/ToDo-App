import 'package:flutter/material.dart';
class Circularprogrssbar extends StatelessWidget {
  const Circularprogrssbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
          alignment: Alignment.center,
          children: [
            SizedBox(
              height : MediaQuery.of(context).size.width/3,
              width: MediaQuery.of(context).size.width/3,
              child: CircularProgressIndicator(
                value: 0.25,
                valueColor: AlwaysStoppedAnimation(Colors.blue),
                backgroundColor: Colors.grey,
                strokeWidth: 14,
              ),
            ),
            Center(
                child: Text("25 %" ,
                  style: const TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),)  )
          ]
      ),
    );
  }
}
