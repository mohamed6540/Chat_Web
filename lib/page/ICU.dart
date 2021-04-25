import 'package:flutter/material.dart';

class ICU extends StatefulWidget {
  @override
  _ICUState createState() => _ICUState();
}

class _ICUState extends State<ICU> {
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.teal,
          title: Center(
              child: Text(
            "ICU",
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
          )),
        ),
        body: ListView(
          children: [
            Container(
              child: Card(
                child: Text('ICU'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
