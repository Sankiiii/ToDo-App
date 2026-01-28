import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
class ListviewHome extends StatelessWidget {
  const ListviewHome({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount : 10 ,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder : (context , index) {
        return Column(
          children: [
            Card(
              elevation: 3,
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12) ,
              ),
              child:Padding(
                padding: const EdgeInsets.all(15.0),
                child: ListTile(
                  title: const Text("Plan Q3 Marketing Campaign Strategy"  , style: TextStyle(color: Colors.black87 , fontWeight: FontWeight.w600 , fontSize: 20),),
                  trailing: const Icon(
                    Icons.check_circle_outline,
                    size: 25,
                    color: Colors.black,
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(top: 6),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                        decoration: BoxDecoration(
                          color: Colors.grey.shade200,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: const Text(
                          "Work",
                          style: TextStyle(fontSize: 12),
                        ),
                      ),
                    ),
                  ),

                ),
              ),
            )
          ],
        );
      }
    );
  }
}
