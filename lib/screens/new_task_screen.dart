import 'package:flutter/material.dart';
import 'package:todo_app/widgets/new_taskWidget/dateselNewTask.dart';
import 'package:todo_app/widgets/new_taskWidget/priorityNewTask.dart';
import 'package:todo_app/widgets/new_taskWidget/savetaskButton.dart';
import 'package:todo_app/widgets/new_taskWidget/textfieldNewTask.dart';
class NewTaskScreen extends StatefulWidget {
   NewTaskScreen({super.key});

  @override
  State<NewTaskScreen> createState() => _NewTaskScreenState();
}

class _NewTaskScreenState extends State<NewTaskScreen> {
  late TextEditingController taskController ;

 late TextEditingController detailController ;
 int isPressed = -1;
 @override
  void initState() {
    // TODO: implement initState
    super.initState();
    taskController = TextEditingController();
    detailController = TextEditingController();
  }
@override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    taskController.dispose();
    detailController.dispose();
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 4,
        title: Text("New Task" , style: TextStyle(color: Colors.black , fontSize: MediaQuery.of(context).size.width * 0.07 , fontWeight: FontWeight.w600),),
        centerTitle: true,
      ),
      body: LayoutBuilder(builder: (context , constraints){
        double size = constraints.maxWidth;
        return Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [


              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Task Title" ,style: TextStyle(color: Colors.black , fontWeight: FontWeight.w400 , fontSize: size*0.04),) ,
                  SizedBox(height: size * 0.02,) ,
                  Textfieldnewtask(controller: taskController, title: "e.g. Plan team meeting" , num: 0.12,),

                ],
              ) ,

              SizedBox(height: size * 0.06,) ,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Details/Notes" ,style: TextStyle(color: Colors.black , fontWeight: FontWeight.w400 , fontSize:size*0.04),) ,
                  SizedBox(height: size*0.02,) ,
                  Textfieldnewtask(controller: detailController, title: "Add detailed description or specific instruction..." , num: 0.30,),
                ],
              ) ,

              SizedBox(height:  size * 0.06,) ,

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Priority" , style: TextStyle(color: Colors.black , fontWeight: FontWeight.w400 , fontSize: size * 0.04),) ,
                  SizedBox(height: size * 0.02,) ,
                  Row(
                    children: [
                      InkWell(
                          onTap: (){
                            setState(() {
                              isPressed = 0;
                            });

                          },
                          child: Prioritynewtask(title: "Low", textColor: isPressed == 0 ? Colors.white : Colors.black, backColor: isPressed == 0 ? Colors.blue  : Colors.grey.shade100)),
                      SizedBox(width: size *0.02,),
                      InkWell(
                          onTap: (){
                            setState(() {
                              isPressed =1;
                            });

                          },
                          child: Prioritynewtask(title: "Medium", textColor: isPressed ==1? Colors.white : Colors.black, backColor: isPressed == 1 ? Colors.blue  : Colors.grey.shade100)),
                      SizedBox(width: size *0.02,),
                      InkWell(
                          onTap: (){
                            setState(() {
                              isPressed =2;
                            });

                          },
                          child: Prioritynewtask(title: "High", textColor: isPressed == 2 ? Colors.white : Colors.black, backColor: isPressed == 2 ? Colors.blue  : Colors.grey.shade100)),
                    ],
                  )

                ],
              ) ,
              SizedBox(height:  size * 0.06,) ,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Due Date" ,style: TextStyle(color: Colors.black , fontSize: size*0.04 , fontWeight: FontWeight.w400),) ,
                  SizedBox(height: size *0.02,) ,
                  Dateselnewtask()
                ],
              ), 
              
              Spacer(), 
              
              Savetaskbutton(onPressed: (){})

            ],
          ),
        );
      }),
    );
  }
}
