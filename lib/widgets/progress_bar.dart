
import 'package:flutter/material.dart';

Widget progressBar(
    String category,
    String amount,
    String percentage,
    Color barColor,
    double progress,
    ) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            category,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          ),
          Text(
            "$amount ($percentage)",
            style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
        ],
      ),

      const SizedBox(height: 8),

      ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: LinearProgressIndicator(
          value: progress,
          minHeight: 8,
          color: barColor,
          backgroundColor: Colors.grey[300],
        ),
      ),
    ],
  );
}