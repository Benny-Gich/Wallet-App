// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:pattern_formatter/pattern_formatter.dart';
import 'package:flutter/material.dart';

class AddCard extends StatefulWidget {
  // final int cardNumber;
  // final DateTime expiry;
  const AddCard({
    super.key,
    // required this.cardNumber,
    // required this.expiry,
  });

  @override
  State<AddCard> createState() => _AddCardState();
}

class _AddCardState extends State<AddCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.save_as_sharp))
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  "Add ",
                  style: TextStyle(
                    fontSize: 28,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Card",
                  style: TextStyle(
                    fontSize: 28,
                    fontStyle: FontStyle.italic,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                color: Colors.grey.shade100,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  SizedBox(height: 20),
                  SizedBox(
                    height: 50,
                    child: TextFormField(
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                        icon: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Image.asset('icons/driving-license.png'),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        label: Text('Account Name'),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  SizedBox(
                    height: 50,
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      inputFormatters: [CreditCardFormatter()],
                      decoration: InputDecoration(
                        icon: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Image.asset('icons/password.png'),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        label: Text('Card Number'),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  SizedBox(
                    height: 50,
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        suffixText: '***',
                        icon: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Image.asset('icons/cvv.png'),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        label: Text('CVV'),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  SizedBox(
                    height: 50,
                    child: TextFormField(
                      keyboardType: TextInputType.datetime,
                      inputFormatters: [DateInputFormatter()],
                      decoration: InputDecoration(
                        suffixText: 'dd/yy',
                        icon: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset('icons/date.png'),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        label: Text('Expiry Date'),
                      ),
                    ),
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
