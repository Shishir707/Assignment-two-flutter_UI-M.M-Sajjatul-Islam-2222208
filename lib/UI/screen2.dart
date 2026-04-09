import 'package:flutter/material.dart';
import '../widgets/appbar.dart';
import '../widgets/progress_bar.dart';

class Report extends StatelessWidget {
  const Report({super.key});

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
              SizedBox(height: 15),

              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Text(
                    "Monthly Spending Report",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ],
              ),

              SizedBox(height: 15),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [BoxShadow(color: Colors.black12, blurRadius: 8)],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Total Expenses (Last 30 days)",
                      style: TextStyle(fontSize: 14, color: Colors.black54),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      "-\$1270.00",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.red,
                      ),
                    ),
                    Row(
                      children: const [
                        Icon(Icons.arrow_upward, size: 18, color: Colors.red),
                        SizedBox(width: 6),
                        Text(
                          "Up 12% from last month",
                          style: TextStyle(fontSize: 14, color: Colors.red),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),

              Container(
                width: double.infinity,
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 8,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Spending Breakdown",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 16),
                    progressBar(
                      "Food & Drink",
                      "\$450.00",
                      "35%",
                      Colors.redAccent,
                      0.35,
                    ),
                    const SizedBox(height: 15),

                    progressBar(
                      "Shopping",
                      "\$320.00",
                      "25%",
                      Colors.purple,
                      0.25,
                    ),
                    const SizedBox(height: 15),

                    progressBar(
                      "Housing",
                      "\$280.00",
                      "22%",
                      Colors.orange,
                      0.22,
                    ),
                    const SizedBox(height: 15),

                    progressBar(
                      "Transport",
                      "\$150.00",
                      "12%",
                      Colors.green,
                      0.12,
                    ),
                    const SizedBox(height: 15),

                    progressBar("Other", "\$70.00", "6%", Colors.grey, 0.06),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

