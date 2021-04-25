import 'package:flutter/material.dart';
import 'package:chat2/component/drawer.dart';

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          'Departments',
          style: TextStyle(fontWeight: FontWeight.bold),
        )),
        backgroundColor: Colors.teal,
      ),
      drawer: MyDrawer(),
      body: GridView(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        children: <Widget>[
          InkWell(
            child: Card(
              child: Column(
                children: <Widget>[
                  Expanded(
                    child: Image.asset('images/mayo clinic.jpg',
                        fit: BoxFit.cover),
                  ),
                  Container(
                    child: Text(
                      "ICU",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            onTap: () {
              Navigator.of(context).pushNamed('ICU');
            },
          ),
          Container(
              child: Card(
                  child: Column(
            children: <Widget>[
              Expanded(
                child: Image.asset(
                  'images/4228890.png',
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                  child: Text(
                "NICU",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              )),
            ],
          ))),
          Container(
              child: Card(
                  child: Column(
            children: <Widget>[
              Expanded(
                child: Image.asset(
                  'images/4228890.png',
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                  child: Text(
                "Dialysis",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              )),
            ],
          ))),
          Container(
              child: Card(
                  child: Column(
            children: <Widget>[
              Expanded(
                child: Image.asset(
                  'images/4228890.png',
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                  child: Text(
                "OR",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              )),
            ],
          ))),
          Container(
              child: Card(
                  child: Column(
            children: <Widget>[
              Expanded(
                child: Image.asset(
                  'images/4228890.png',
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                  child: Text(
                "Sterilization",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              )),
            ],
          ))),
          Container(
              child: Card(
                  child: Column(
            children: <Widget>[
              Expanded(
                child: Image.asset(
                  'images/1.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                  child: Text(
                "ER",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              )),
            ],
          ))),
        ],
      ),
    );
  }
}
