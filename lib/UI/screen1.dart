import 'package:flutter/material.dart';

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F6FA),
      body: SafeArea(
        child: Column(
            children: [
        Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          children: [
          const CircleAvatar(
          backgroundColor: Colors.deepPurple,
          child: Text("M", style: TextStyle(color: Colors.white)),
        ),
        const SizedBox(width: 12),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              "Welcome back,",
              style: TextStyle(color: Colors.grey),
            ),
            Text(
              "STUDENT NAME",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
        const Spacer(),
        const Icon(Icons.notifications_none),

        SizedBox(height: 10,),
        ],
      ),
    ),]
    ,
    )
    ,
    )
    ,
    );
  }
}
