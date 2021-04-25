import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'chat.dart';
import 'main.dart';


class Login extends StatefulWidget {
  static const String id="Login";

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String email;
  String password;
  final FirebaseAuth_aut = FirebaseAuth.instance;

  Key get key => null;

  Future<void> LoginUser() async {

    final User user =(await FirebaseAuth_aut.signInWithEmailAndPassword(email: email, password: password)).user;
    Navigator.push(
        context,MaterialPageRoute(
      builder: (context) => Chat( user: user),
    ));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("MyChat"),
      ),
      body: Column(
        children: [
          Expanded(
            child: Hero(
              tag: 'logo',
              child: Container(
                width: 120,
                child: Image.asset("assets/images/chat.jpg"),
              ),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          TextField(
            keyboardType: TextInputType.emailAddress,
            onChanged: (value)=> email=value,
            decoration: InputDecoration(
                hintText: "Enter Your Email",
                border: const OutlineInputBorder()
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            obscureText: true,
            onChanged: (value)=> password=value,
            autocorrect: false,
            decoration: InputDecoration(
                hintText: "Enter Your Password",
                border: const OutlineInputBorder()
            ),
          ),
          SizedBox(
            height: 50,
          ),
          CustomButton(() async{await LoginUser(); }, "Login")
        ],
      ),
    );
  }
}
