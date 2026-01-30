import 'package:flutter/material.dart';
import 'package:todo_app/widgets/editskillWidget/buttonEdit.dart';
import 'package:todo_app/widgets/editskillWidget/sectionseditWidget.dart';
import 'package:todo_app/widgets/editskillWidget/textfieldEdit.dart';
class Edittodo extends StatefulWidget {
  Edittodo({super.key});

  @override
  State<Edittodo> createState() => _EdittodoState();
}

class _EdittodoState extends State<Edittodo> {
  final TextEditingController taskController = TextEditingController();

  final TextEditingController descController = TextEditingController();
  int selectedDetailIndex = -1;
  bool  isPressed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 4,

          title: Text("Edit Todo" ,style: TextStyle(color: Colors.black , fontSize:MediaQuery.of(context).size.width *0.06 , fontWeight: FontWeight.w500 ),),
          centerTitle: true,
          actions: [
            IconButton(onPressed: (){},
                icon: Icon(Icons.delete , size: MediaQuery.of(context).size.width*0.06,))
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Task Title",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: MediaQuery.of(context).size.width * 0.04,
                      ),
                    ),

                    const SizedBox(height: 20),

                    Textfieldedit(
                      controller: taskController,
                      title: "Weekly Team Sync Notes",
                    ),
                  ],
                ),
                const SizedBox(height: 40),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Description",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: MediaQuery.of(context).size.width * 0.05,
                        fontWeight: FontWeight.w400,
                      ),
                    ),

                    const SizedBox(height: 20),

                    Textfieldedit(
                      controller: descController,
                      title:
                      "Prepare agenda for the weekly team sync meeting...",
                    ),

                  ],
                ),
                const SizedBox(height: 40),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Details",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: MediaQuery.of(context).size.width * 0.04,
                      ),
                    ),

                    SizedBox(height: MediaQuery.of(context).size.width*0.08,) ,

                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          InkWell(
                            onTap: () {
                              setState(() {
                                selectedDetailIndex =0;
                              });
                            },
                            child: IntrinsicHeight(                  // ← add this
                              child: Sectionseditwidget(
                                title: "Tomorrow 6:30 PM",
                                color: selectedDetailIndex == 0 ? Colors.blue : Colors.white,
                                iconData: Icons.calendar_month,
                                rndColor: selectedDetailIndex == 0 ? Colors.white : Colors.blue,
                              ),
                            ),
                          ),

                          SizedBox(width: MediaQuery.of(context).size.width *0.04) ,
                          InkWell(
                            onTap: () {
                              setState(() {
                                selectedDetailIndex =1;
                              });
                            },
                            child: IntrinsicHeight(                  // ← add this
                              child: Sectionseditwidget(
                                title: "High Priority",
                                color: selectedDetailIndex == 1? Colors.blue : Colors.white,
                                iconData: Icons.flag,
                                rndColor: selectedDetailIndex == 1 ? Colors.white : Colors.blue,
                              ),
                            ),
                          ),
                          SizedBox(width: MediaQuery.of(context).size.width *0.04,),
                          InkWell(
                            onTap: () {
                              setState(() {
                                selectedDetailIndex =2;
                              });
                            },
                            child: IntrinsicHeight(                  // ← add this
                              child: Sectionseditwidget(
                                title: "15 min before",
                                color: selectedDetailIndex == 2 ? Colors.blue : Colors.white,
                                iconData: Icons.notifications_active_outlined,
                                rndColor: selectedDetailIndex == 2? Colors.white : Colors.blue,
                              ),
                            ),
                          ),
                          SizedBox(width: MediaQuery.of(context).size.width *0.04,) ,
                          InkWell(
                            onTap: () {
                              setState(() {
                                selectedDetailIndex =3;
                              });
                            },
                            child: IntrinsicHeight(                  // ← add this
                              child: Sectionseditwidget(
                                title: "Project",
                                color: selectedDetailIndex == 3 ? Colors.blue : Colors.white,
                                iconData: Icons.file_copy_outlined,
                                rndColor: selectedDetailIndex == 3 ? Colors.white : Colors.blue,
                              ),
                            ),
                          ),

                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(height: MediaQuery.of(context).size.width * 0.08),

                Container(
                  child: Buttonedit(onPressed: (){}),
                )



              ],
            ),
          ),
        )
    );
  }

}
