import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
class Completedtasklist extends StatelessWidget {
  const Completedtasklist({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 3,
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (context , index){
          return Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Card(
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12) ,
                  ),
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: ListTile(
                      title: Text("Review Project X \nDocumentation and Provide", style: TextStyle(color: Colors.black54 , fontSize: 20 , fontWeight: FontWeight.w600),),
                      trailing: Icon(Icons.repeat , color: Colors.blue, size: 25,),
                      subtitle: Row(
                        children: [
                          SizedBox(
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade100 ,
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Text("Work" , style: TextStyle(fontSize: 12),),
                              ),
                            ),
                          ),
                          SizedBox(width: 12,) ,
                          SizedBox(
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade100 ,
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Text("Completed on 2023-04-15" , style: TextStyle(fontSize: 12),),
                              ),
                            ),
                          ),
                        ],
                      ),

                    ),
                  ),
                )
              ],
            ),
          );

    });
  }
}
