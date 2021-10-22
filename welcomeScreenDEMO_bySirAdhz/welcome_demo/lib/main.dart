// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.deepOrangeAccent,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[
              
              Row(
                mainAxisAlignment:MainAxisAlignment.center,
                // ignore: prefer_const_literals_to_create_immutables
                children: [

                  Icon(
                    Icons.coffee_rounded,
                    color:Colors.white,
                  ),
                  
                  SizedBox(width:10.0),

                  Text('WELCOME',
                  style:TextStyle(
                    color:Colors.white, 
                    fontSize:22.0,
                    fontWeight:FontWeight.bold,
                    letterSpacing:2.0,
                  ) ,
                  ),
                ],
              ), 
              Image.asset('images/welcome.png'),
                
              OutlinedButton(
                onPressed:() {
                  print('Sign In');
                },
                child: Text("Sign In"),
                style: OutlinedButton.styleFrom(
                  primary: Colors.white,
                  side: BorderSide(color: Colors.white, width:2.0),
                  minimumSize: Size(200.0, 40),
                ),
                ),
              SizedBox(height:10),
              
              TextButton(
                onPressed: (){
                  print('Register');
                },
                child: Text("Register"),
                style: TextButton.styleFrom(
                  primary: Colors.deepOrangeAccent,
                  backgroundColor:Colors.white,
                  minimumSize: Size(200.0, 40),
                )
              )
            ],
          ),
        ),
      ),
    );
  }
}