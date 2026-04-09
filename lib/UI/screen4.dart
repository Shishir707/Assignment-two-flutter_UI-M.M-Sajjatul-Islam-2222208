import 'package:flutter/material.dart';

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
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.blueAccent,
                      backgroundImage: AssetImage('assets/profile.png'),
                    ),
                    SizedBox(width: 12),

                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Welcome back,",
                            style: TextStyle(color: Colors.grey),
                          ),
                          Text(
                            "M. M Sajjatul Islam",
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),

                    Icon(Icons.notifications_none),
                  ],
                ),
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
