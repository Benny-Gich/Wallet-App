// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class MyTextinput extends StatelessWidget {
  final String imagePath;
  final String textInput;
  final String suffixText;
  const MyTextinput({
    super.key,
    required this.imagePath,
    required this.textInput,
    required this.suffixText,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: TextFormField(
        keyboardType: TextInputType.name,
        decoration: InputDecoration(
          icon: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Image.asset(imagePath),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(12),
              bottomRight: Radius.circular(12),
            ),
          ),
          label: Text(textInput),
          //Account Name
          //Card Number
          //CVV
          //Expiry Date
        ),
      ),
    );
  }
}
