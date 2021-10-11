// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
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
  int _counter = 0;

  void _returnSignIn() {
    print ("Sign In Button Tapped");

    // setState(() {
    //   _counter++;
    // });
  }
  void _returnRegister() {
    print ("Register Button was Tapped");
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor:Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children:<Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    Icon(
                      Icons.favorite,
                      color: Colors.lightBlueAccent,
                      size: 24.0,
                      semanticLabel: 'Text to announce in accessibility modes',
                    ),
                    SizedBox(height:24,width: 20.0,),

                    Text (
                      'WELCOME',
                      style: TextStyle(
                        letterSpacing: 10.0,fontSize:20.0,fontFamily:''
                        )
                      
                    )
                  ],
            ),
            const SizedBox(
            height:30
            ),
            
            
            const SizedBox(
            height:30
            ),
            
            TextButton(
              onPressed:_returnSignIn,
              style: TextButton.styleFrom(
                shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                backgroundColor: Colors.blue,
                primary: Colors.white,
                padding:EdgeInsets.fromLTRB(65,15,65,15),
              ),
              child:Text('Sign Up Here',
              style:TextStyle(
                color:Colors.white,
                )
                ),
            ),
          
          const SizedBox(
            height:30
            ),
            
            OutlinedButton(
              onPressed:_returnRegister,
              style: TextButton.styleFrom(
                shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
                primary: Colors.blue,
                padding:EdgeInsets.fromLTRB(78,15,78,15),
                side:BorderSide(color: Colors.blue, width:2),
              ),
              child:Text('Register',
              style:TextStyle(
                color:Colors.blue,
                )
                ),
            ),

          ],
        ),
      ),
      
    );
  }
}


// floatingActionButton: FloatingActionButton(
//         onPressed: _incrementCounter,
//         tooltip: 'Increment',
//         child: const Icon(Icons.add),
//       ), 

// children: <Widget>[
//             const Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headline4,
//             // ),
//             ],

// Container(
//                  child: Center(
//                    child: Container(
//                       height: 300, 
//                       width:300,
//                       color: Colors.blue,
//                       decoration:BoxDecoration(
// //                         image: DecorationImage(
// //                           image: AssetImage(
// //                             '../assets/welcome.png'
// //                           ),
// //                         ),
//                       ),
//                    ),
//                  )
//             ),
// 