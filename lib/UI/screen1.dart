import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
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
                    Column(
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
                    Spacer(),
                    Icon(Icons.notifications_none),

                    SizedBox(height: 10),
                  ],
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Container(
                  padding: EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    color: Colors.blue[500],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Total Balance",
                            style: TextStyle(color: Colors.white, fontSize: 14),
                          ),
                          Icon(
                            Icons.currency_exchange,
                            color: Colors.white,
                            size: 18,
                          ),
                        ],
                      ),

                      SizedBox(height: 8),

                      Text(
                        "\$8,945.32",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Savings: \$5,500",
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          ),
                          Text(
                            "Last 30 days: +\$300 ->",
                            style: TextStyle(color: Colors.white, fontSize: 12),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ActionButton(icon: Icons.send, label: "Transfer"),
                  ActionButton(icon: Icons.receipt_long, label: "Pay Bill"),
                  ActionButton(icon: Icons.link, label: "Invest"),
                ],
              ),
              SizedBox(height: 10),

              Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Recent Transactions",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "View All",
                        style: TextStyle(color: Colors.blue[500]),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 10),

              itemCard(
                icon: Icons.movie,
                title: "Netflix Subscription",
                subtitle: "Entertainment . Today",
                amount: "-\$19.99",
                amountColor: Colors.red,
              ),

              itemCard(
                icon: Icons.coffee,
                title: "Coffee Shop",
                subtitle: "Food & Drink . Today",
                amount: "-\$4.50",
                amountColor: Colors.red,
              ),

              itemCard(
                icon: Icons.wallet,
                title: "Salary Deposit",
                subtitle: "Income . Yesterday",
                amount: "+\$3500.00",
                amountColor: Colors.green,
              ),

              itemCard(
                icon: Icons.shopping_cart,
                title: "Grocery Store",
                subtitle: "Shopping . Yesterday",
                amount: "-\$55.80",
                amountColor: Colors.red,
              ),

              itemCard(
                icon: Icons.shopping_cart,
                title: "Amazon Purchase",
                subtitle: "Shopping . 2 days ago",
                amount: "-\$120.45",
                amountColor: Colors.red,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ActionButton extends StatelessWidget {
  final IconData icon;
  final String label;

  const ActionButton({super.key, required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 6),
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.05),
                blurRadius: 10,
                offset: Offset(0, 4),
              ),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Color(0xFFEAEAFF),
                  shape: BoxShape.circle,
                ),
                child: Icon(icon, color: Colors.deepPurple),
              ),
              SizedBox(height: 10),
              Text(label, style: TextStyle(fontWeight: FontWeight.w500)),
            ],
          ),
        ),
      ),
    );
  }
}

Widget itemCard({
  required IconData icon,
  required String title,
  required String subtitle,
  required String amount,
  required Color amountColor,
}) {
  return Padding(
    padding: EdgeInsets.all(12),
    child: Row(
      children: [
        CircleAvatar(
          radius: 22,
          backgroundColor: Colors.grey.shade200,
          child: Icon(icon, color: Colors.black87),
        ),
        SizedBox(width: 15),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            SizedBox(height: 3),
            Text(
              subtitle,
              style: TextStyle(
                color: Colors.grey,
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
        Spacer(),
        Text(
          amount,
          style: TextStyle(
            color: amountColor,
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
      ],
    ),
  );
}
