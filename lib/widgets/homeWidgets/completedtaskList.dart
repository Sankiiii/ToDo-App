import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
class Completedtasklist extends StatelessWidget {
  const Completedtasklist({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        double width = constraints.maxWidth;

        return ListView.builder(
          itemCount: 3,
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return Card(
              elevation: 3,
              margin: const EdgeInsets.symmetric(vertical: 8),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: ListTile(
                  title: Text(
                    "Review Project X \nDocumentation and Provide",
                    style: TextStyle(
                      fontSize: width * 0.045,
                      fontWeight: FontWeight.w600,
                      color: Colors.black54,
                    ),
                  ),
                  trailing: Icon(
                    Icons.repeat,
                    size: width * 0.06,
                    color: Colors.blue,
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(top: 6),
                    child: Row(
                      children: [
                        _chip("Work", width),
                        const SizedBox(width: 12),
                        _chip("Completed on 2023-04-15", width),
                      ],
                    ),
                  ),
                ),
              ),
            );
          },
        );
      },
    );
  }

  Widget _chip(String text, double width) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(
        text,
        style: TextStyle(fontSize: width * 0.035),
      ),
    );
  }
}
