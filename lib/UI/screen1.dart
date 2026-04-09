import 'package:assignment_two/widgets/appbar.dart';
import 'package:flutter/material.dart';

import '../widgets/action_button.dart';
import '../widgets/item_card.dart';

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
              HeaderWidget(
                userName: "M.M Sajjatul Islam",
                profileImagePath: "assets/profile.png",
              ),

              SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Container(
                  padding: EdgeInsets.all(30),
                  decoration: BoxDecoration(
                    color: Colors.blue[800],
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
