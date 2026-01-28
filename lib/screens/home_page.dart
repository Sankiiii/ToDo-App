import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:todo_app/widgets/homeWidgets/circularProgrssbar.dart';
import 'package:todo_app/widgets/homeWidgets/completedtaskList.dart';
import 'package:todo_app/widgets/homeWidgets/listviewHome.dart';
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leadingWidth: 140,
        leading: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              "img/img.png",
              height: 30,
            ),
            const SizedBox(width: 6),
            const Text(
              "Hub",
              style: TextStyle(
                color: Colors.blue,
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),

          ],
        ),
        backgroundColor: Colors.white,
        elevation: 4,
        title: Text("The Hub" , style: TextStyle(color: Colors.black , fontWeight: FontWeight.w600 , fontSize: 24),),
        actions: [
          IconButton(onPressed: (){},
              icon: Icon(Icons.settings , color: Colors.black, size: 30,))
        ],
      ),

      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    Column(
                  children: [
                    SizedBox(height: 20,) ,
                    Text("Today's Progress" , style: TextStyle(color: Colors.black , fontSize: 22 , fontWeight: FontWeight.w600),) ,
                    SizedBox(height: 20,) ,
                    Container(
                      height: MediaQuery.of(context).size.width/2.50,
                        width: MediaQuery.of(context).size.width/2.50,
                        decoration: BoxDecoration(
                          color: Colors.white54,
                          boxShadow:[BoxShadow(
                            blurRadius: 2,
                            spreadRadius: 2 ,
                            color: Colors.black12
                          )],
                          borderRadius: BorderRadius.circular(12) ,
          
                        ),
                        child: Circularprogrssbar()) ,
          
                  ],
                ) ,
          SizedBox(height: 20,),
               Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
          
                      Text("Active Tasks" , style: TextStyle(color: Colors.black  ,fontSize: 24 , fontWeight: FontWeight.bold),) ,
          
                      SizedBox(height: 20,) ,
                      ListviewHome(),
          
                    ],
                  ),


                    SizedBox(height: 20,) ,

                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Completed Taks" , style: TextStyle(color: Colors.black , fontSize: 22 , fontWeight: FontWeight.w600),) ,
                        SizedBox(height: 20,) ,
                        Completedtasklist()


                      ],
                    )

          ]
          ),
          ),
        ),
      )

    );
  }
}
