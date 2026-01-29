import 'dart:math';

import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
class Dateselnewtask extends StatefulWidget {
   Dateselnewtask({super.key});

  @override
  State<Dateselnewtask> createState() => _DateselnewtaskState();
}

class _DateselnewtaskState extends State<Dateselnewtask> {
  DateTime? selectedDate;

  Future<void> _pickDate() async{
    DateTime? picked = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2000),
        lastDate: DateTime(2100),
    );
    if(picked != null || picked != selectedDate){
      setState(() {
        selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        _pickDate();
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        height:  MediaQuery.of(context).size.width *0.1,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey.shade100,
            width: 1
          ),
          borderRadius: BorderRadius.circular(12) ,
          boxShadow: [BoxShadow(
            color: Colors.grey.shade100 ,
            spreadRadius: 2
          )]
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.calendar_month , color: Colors.blue, size: 20,) ,
            SizedBox(width: MediaQuery.of(context).size.width *0.01) ,
            Text(
              selectedDate == null
                  ? "No date selected"
                  : "Selected Date: ${selectedDate!.day}-${selectedDate!.month}-${selectedDate!.year}",
              style: TextStyle(fontSize: 18),
            ),   ],
        ),
      ),
    );
  }
}
