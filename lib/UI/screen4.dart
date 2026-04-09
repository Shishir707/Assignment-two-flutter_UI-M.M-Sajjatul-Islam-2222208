import 'package:flutter/material.dart';

import '../widgets/appbar.dart';
import '../widgets/build_box.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              HeaderWidget(
                userName: "M.M Sajjatul Islam",
                profileImagePath: "assets/profile.png",
              ),

              SizedBox(height: 10),
              Column(
                children: [
                  Text(
                    "User Profile",
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  CircleAvatar(
                    radius: 45,
                    backgroundColor: Colors.blueAccent,
                    backgroundImage: AssetImage('assets/profile.png'),
                  ),
                ],
              ),

              SizedBox(height: 25),
              buildBox(title: "Name", value: "M. M Sajjatul Islam"),

              SizedBox(height: 15),
              buildBox(title: "Student ID", value: "2222208"),

              SizedBox(height: 15),
              buildBox(title: "Email", value: "2222208@iub.edu.bd"),

              SizedBox(height: 15),
              buildBox(
                title: "Story",
                value:
                    "Student ID: 2222208\n"
                    "Balancing last semester projects, late-night study sessions,\n"
                    "and saving for future travels.\n\n"
                    "In my free time i am travelling new places",
                isBio: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
