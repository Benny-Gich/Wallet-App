// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:wallet_app/pages/settings_tile.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.more_vert_sharp,
            ),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Settings",
              style: TextStyle(
                fontSize: 28,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 35,
                  backgroundImage: AssetImage("icons/office-man.png"),
                ),
                SizedBox(width: 30),
                RichText(
                  text: TextSpan(
                    style: DefaultTextStyle.of(context).style,
                    children: <TextSpan>[
                      TextSpan(
                        text: "Hi!\n",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontStyle: FontStyle.italic,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      TextSpan(
                        text: "Ultra Gich",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  MyListTile(
                    imagePath: "icons/theme.png",
                    tiletitle: "Appearance",
                    tilesubtitle: "Customize your Wallet",
                  ),
                  Divider(
                    color: Colors.purpleAccent,
                    thickness: 0.3,
                    indent: 5,
                    endIndent: 5,
                  ),
                  MyListTile(
                    imagePath: "icons/biometrics.png",
                    tiletitle: "Security",
                    tilesubtitle: "Lock you Wallet",
                  ),
                  Divider(
                    color: Colors.purpleAccent,
                    thickness: 0.3,
                    indent: 5,
                    endIndent: 5,
                  ),
                  MyListTile(
                    imagePath: "icons/info.png",
                    tiletitle: "About",
                    tilesubtitle: "Learn More about your Wallet",
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  MyListTile(
                    imagePath: "icons/feedback.png",
                    tiletitle: "Send Feedback",
                    tilesubtitle: "Let us know how to improve your wallet",
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  MyListTile(
                    imagePath: "icons/cycle.png",
                    tiletitle: "Change your Account",
                    tilesubtitle: "",
                  ),
                  Divider(
                    color: Colors.purpleAccent,
                    thickness: 0.3,
                    indent: 5,
                    endIndent: 5,
                  ),
                  MyListTile(
                    imagePath: "icons/close.png",
                    tiletitle: "Sign Out",
                    tilesubtitle: "",
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
