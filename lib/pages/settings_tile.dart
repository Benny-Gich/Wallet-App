// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyListTile extends StatelessWidget {
  final String imagePath;
  final String tiletitle;
  final String tilesubtitle;

  const MyListTile(
      {super.key,
      required this.imagePath,
      required this.tiletitle,
      required this.tilesubtitle,
      required});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Image.asset(imagePath),
          ),
          title: Text(
            tiletitle,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 19,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: Text(
            tilesubtitle,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 15,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.normal,
            ),
          ),
          trailing: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.arrow_forward_ios,
            ),
          ),
        ),
      ],
    );
  }
}
