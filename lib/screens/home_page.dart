import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todo_app/screens/new_task_screen.dart';
import 'package:todo_app/widgets/homeWidgets/circularProgrssbar.dart';
import 'package:todo_app/widgets/homeWidgets/completedtaskList.dart';
import 'package:todo_app/widgets/homeWidgets/listviewHome.dart';
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButton(onPressed: (){
        Navigator.push(context, CupertinoPageRoute(builder: (context) => NewTaskScreen()));
      } , shape: CircleBorder(), child: Icon(Icons.add , color: Colors.deepPurpleAccent,),),
      appBar: AppBar(

        leadingWidth: MediaQuery.of(context).size.width * 0.35,
        leading: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              "img/img.png",
              height:  MediaQuery.of(context).size.width * 0.07,
            ),
            const SizedBox(width: 6),
             Text(
              "Hub",
              style: TextStyle(
                color: Colors.blue,
                fontSize: MediaQuery.of(context).size.width * 0.06,
                fontWeight: FontWeight.bold,
              ),
            ),

          ],
        ),
        backgroundColor: Colors.white,
        elevation: 4,
        title: Text("The Hub" , style: TextStyle(color: Colors.black , fontWeight: FontWeight.w600 , fontSize: MediaQuery.of(context).size.width * 0.055,),),
        actions: [
          IconButton(onPressed: (){},
              icon: Icon(Icons.settings , color: Colors.black, size: MediaQuery.of(context).size.width * 0.07,))
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
