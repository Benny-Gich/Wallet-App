// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:page_indicator_plus/page_indicator_plus.dart';
import 'package:wallet_app/pages/add_card.dart';
import 'package:wallet_app/pages/my_buttons.dart';
import 'package:wallet_app/pages/my_card.dart';
import 'package:wallet_app/pages/my_listtile.dart';
import 'package:wallet_app/pages/settings.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      "My",
                      style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontStyle: FontStyle.italic),
                    ),
                    Text(
                      " Cards",
                      style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.normal,
                          color: Colors.black,
                          fontStyle: FontStyle.italic),
                    ),
                  ],
                ),
                Container(
                  //padding: EdgeInsets.all(3),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    shape: BoxShape.circle,
                  ),
                  child: IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const AddCard()));
                    },
                    icon: Icon(
                      Icons.add,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            SizedBox(
              height: 200,
              child: PageView(
                controller: _controller,
                children: [
                  MyCard(
                    balance: 8790.78,
                    cardNumber: 12345678,
                    expMonth: 11,
                    expYear: 25,
                    color: Colors.purpleAccent,
                  ),
                  MyCard(
                    balance: 67883.89,
                    cardNumber: 98756433,
                    expMonth: 02,
                    expYear: 22,
                    color: Colors.green,
                  ),
                  MyCard(
                    balance: 76435.99,
                    cardNumber: 89765432,
                    expMonth: 03,
                    expYear: 25,
                    color: Colors.orange,
                  ),
                  MyCard(
                    balance: 89643.67,
                    cardNumber: 67543290,
                    expMonth: 06,
                    expYear: 26,
                    color: Colors.blueAccent,
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
            PageIndicator(
              controller: _controller,
              count: 4,
              color: Colors.grey.shade300,
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MyButton(
                    buttonText: "Send",
                    iconImagePath: 'icons/send.png',
                  ),
                  //Send Button
                  MyButton(
                    buttonText: "Pay",
                    iconImagePath: 'icons/credit-card.png',
                  ),
                  //Pay Button
                  MyButton(
                    buttonText: 'Bill',
                    iconImagePath: 'icons/payment.png',
                  ),
                  //Bill Button
                ],
              ),
            ),
            SizedBox(height: 20),
            MyListtile(
                iconImagePath: "icons/analysis.png",
                tiletitle: 'Statistics',
                tilesubtitle: 'Payments & Income'),
            SizedBox(height: 20),
            MyListtile(
                iconImagePath: 'icons/transaction.png',
                tiletitle: 'Transactions',
                tilesubtitle: 'Transactions & History'),
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {},
      //   backgroundColor: Colors.purpleAccent,
      //   child: Icon(Icons.monetization_on),
      // ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        //color: Colors.grey.shade200,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.home,
                size: 30,
                color: Colors.purple,
              ),
            ),
            IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const Settings()));
              },
              icon: Icon(
                Icons.settings,
                size: 30,
                color: Colors.purple,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
