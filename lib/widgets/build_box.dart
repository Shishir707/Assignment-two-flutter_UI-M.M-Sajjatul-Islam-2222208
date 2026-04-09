import 'package:flutter/material.dart';

Widget buildBox({
  required String title,
  required String value,
  bool isBio = false,
}) {
  return Container(
    width: double.infinity,
    padding: EdgeInsets.all(16),
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(12),
      boxShadow: [
        BoxShadow(color: Colors.black12, blurRadius: 8, offset: Offset(0, 3)),
      ],
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: TextStyle(
            color: Colors.grey[700],
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(height: 6),
        Text(
          value,
          style: TextStyle(
            fontSize: isBio ? 14 : 16,
            height: isBio ? 1.4 : 1.2,
            fontWeight: isBio ? FontWeight.normal : FontWeight.w600,
            color: isBio ? Colors.black87 : Colors.black,
          ),
        ),
      ],
    ),
  );
}