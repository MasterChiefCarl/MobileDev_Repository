import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Welcome Screen By Carl Garces',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: const MyHomePage(title: 'My Welcome Page - Carl Garces'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void _returnSignIn() {
    print("Sign In Button Tapped");
  }

  void _returnRegister() {
    print("Register Button was Tapped");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color:Colors.lightBlueAccent,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[
                  Icon(
                    Icons.favorite,
                    color: Color(0xff4d69ff),
                    size: 24.0,
                    semanticLabel: 'Text to announce in accessibility modes',
                  ),
                  SizedBox(
                    height: 24,
                    width: 20.0,
                  ),
                  Text(
                    'WELCOME',
                    style: TextStyle(
                        letterSpacing: 10.0, fontSize: 20.0,),
                  ),
                ],
              ),

              const SizedBox(
                height: 24,
              ), //to separate or distance the widgets from each Other

              Center(
                child: Container(
                  height: 240,
                  width: 300,
                  color: const Color(0xff4d69ff),
                  child: Image.asset('graphics/welcome.png', fit: BoxFit.cover),
                ),
              ),

              const SizedBox(
                height: 24,
              ), //to separate or distance the widgets from each Other

              //Shaded Button with Text button
              TextButton(
                  onPressed: _returnSignIn,
                  style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)),
                    backgroundColor: const Color(0xff4d69ff),
                    primary: Colors.white,
                    padding: const EdgeInsets.fromLTRB(82, 15, 82, 15),
                  ),
                  child: const Text(
                    'Sign In',
                    style: TextStyle(color: Colors.white),
                  )),

              const SizedBox(
                height: 24,
              ), //to separate or distance the widgets from each Other

              OutlinedButton(
                  onPressed: _returnRegister,
                  style: TextButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50)),
                    primary: Colors.blue,
                    padding: const EdgeInsets.fromLTRB(78, 15, 78, 15),
                    side: const BorderSide(color: Color(0xff4d69ff), width: 2),
                  ),
                  child: const Text(
                    'Register',
                    style: TextStyle(color: Colors.black),
                  )),

              const SizedBox(
                height: 24,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[
                  Text(
                    'Made with',
                    style: TextStyle(
                        letterSpacing: 2.0, fontSize: 15.0,),
                  ),
                  SizedBox(
                    height: 24,
                    width: 5.0,
                  ),
                  Icon(
                    Icons.favorite,
                    color: Colors.red,
                    size: 15.0,
                  ),
                  SizedBox(
                    height: 24,
                    width: 5.0,
                  ),
                  Text(
                    'by Carl Garces',
                    style: TextStyle(
                        letterSpacing: 2.0, fontSize: 15.0,),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
//This marks the part one completion of my code 
//whn you see this message, you are in the latest version of the activity code