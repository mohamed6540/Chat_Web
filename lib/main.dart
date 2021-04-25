import 'package:chat2/login.dart';
import 'package:chat2/page/ICU.dart';
import 'package:chat2/page/Task_Home.dart';
import 'package:chat2/page/categories.dart';
import 'package:flutter/material.dart';
import 'chat.dart';
import 'registration.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  //This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData.light(),
        initialRoute: Tasthome.id,
        routes: {
          Tasthome.id: (context) => Tasthome(),
          MyHomepage.id: (context) => MyHomepage(),
          Registration.id: (context) => Registration(),
          Login.id: (context) => Login(),
          Chat.id: (context) => Chat(),
          'categories': (context) {
            return Categories();
          },
          'login_screen': (context) {
            return Login();
          },
          'homepage': (context) {
            return Tasthome();
          },
          'ICU': (context) {
            return ICU();
          },
        });
  }
}

class MyHomepage extends StatelessWidget {
  static const String id = "Homescreen";
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Row(
          children: <Widget>[
            Hero(
              tag: 'logo',
              child: Container(
                width: 100,
                child: Image.asset("assets/images/chat.jpg"),
              ),
            ),
            Text(
              'Mychat',
              style: TextStyle(fontSize: 40),
            ),
          ],
        ),
        SizedBox(
          height: 50,
        ),
        CustomButton(() {
          Navigator.of(context).pushNamed(Login.id);
        }, 'Login'),
        SizedBox(
          height: 10,
        ),
        CustomButton(() {
          Navigator.of(context).pushNamed(Registration.id);
        }, 'Register')
      ],
    ));
  }
}

class CustomButton extends StatelessWidget {
  final VoidCallback callback;
  final String text;

  const CustomButton(this.callback, this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      child: Material(
        color: Colors.black26,
        elevation: 6,
        borderRadius: BorderRadius.circular(30),
        child: MaterialButton(
          onPressed: callback,
          minWidth: 200,
          height: 45,
          child: Text(text),
        ),
      ),
    );
  }
}

/*
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Container(
                alignment: Alignment.centerLeft,
                child: Image.asset('lib/images/ab.gif'),
              ),
            ),
          ),
          Column(
            children: <Widget>[
              CustomButton(() {
                Navigator.of(context).pushNamed(Login.id);
              }, 'Login'),
              SizedBox(
                height: 10,
              ),
              CustomButton(() {
                Navigator.of(context).pushNamed(Registration.id);
              }, 'Register'),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    alignment: Alignment.center,
                    child: Image.asset('lib/images/chat.jpg'),
                    height: 200,
                    width: 200,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
*/
