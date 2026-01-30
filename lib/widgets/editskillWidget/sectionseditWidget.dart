import 'package:flutter/material.dart';

class Sectionseditwidget extends StatelessWidget {
  final String title;
  final Color color;
  final IconData iconData;
  final Color rndColor;

  const Sectionseditwidget({
    super.key,
    required this.title,
    required this.color,
    required this.iconData,
    required this.rndColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: rndColor, width: 1),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,           // ← important
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.fromLTRB(5, 0, 8, 0),
            child: Icon(iconData, color: rndColor, size: 30),
          ),
          Text(
            title,
            style: TextStyle(
              color: rndColor,
              fontSize: 16,                        // or 14–18 depending on design
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}