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
      title: 'MLP',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: const MyLandingPage(title: 'My Landing Page - Carl Garces'),
    );
  }
}

class MyLandingPage extends StatefulWidget {
  const MyLandingPage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyLandingPage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyLandingPage> {
  void _returnStays() {
    print("Stays Button Tapped");
  }

  void _returnFlights() {
    print("Flights Button was Tapped");
  }

  void _returnCars() {
    print("Car Button was Tapped");
  }

  void _returnAllInclusiveVactions() {
    print("All-Inclusive Vacations Button was Tapped");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.lightBlueAccent,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              SizedBox(
                height: 300
                ,
                // color: const Color(0xff4d69ff),
                child:
                    Image.asset('graphics/travelling2.png', fit: BoxFit.fitWidth),
              ),
              const SizedBox(
                height: 24,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[
                  Icon(
                    Icons.shopping_bag,
                    color: Color(0xff4d69ff),
                    size: 24.0,
                    semanticLabel: 'Text to announce in accessibility modes',
                  ),
                  SizedBox(
                    height: 24,
                    width: 15.0,
                  ),
                  Text(
                    'TRAVEL 365',
                    style: TextStyle(
                      letterSpacing: 7.0,
                      fontSize: 20.0,
                    ),
                  ),
                  SizedBox(
                    height: 24,
                    width: 15.0,
                  ),
                  Icon(
                    Icons.shopping_bag,
                    color: Color(0xff4d69ff),
                    size: 24.0,
                    semanticLabel: 'Text to announce in accessibility modes',
                  ),
                ],
              ),

              const SizedBox(
                height: 24,
              ), //to separate or distance the widgets from each Other

              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment:CrossAxisAlignment.center,
                    children: <Widget>[
                  
                  const Icon(
                    Icons.room_service,
                    color: Color(0xff4d69ff),
                    size: 24.0,
                    semanticLabel: 'Text to announce in accessibility modes',
                  ),
                  
                  const SizedBox(
                    width: 15.0,
                  ),

                  OutlinedButton(
                      onPressed: _returnStays,
                      style: TextButton.styleFrom(
                        // shape: RoundedRectangleBorder(
                        //     borderRadius: BorderRadius.circular(50)),
                        primary: Colors.blue,
                        fixedSize: const Size(175, 50),
                        side: const BorderSide(
                            color: Color(0xff4d69ff), width: 2),
                      ),
                      child: const Text(
                        'Stays',
                        style: TextStyle(color: Colors.black),
                      )),
                    ],
                  ),
                  
                  const SizedBox(
                    height: 10,
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment:CrossAxisAlignment.center,
                    children: <Widget>[
                  
                  const Icon(
                    Icons.airplanemode_active,
                    color: Color(0xff4d69ff),
                    size: 24.0,
                    semanticLabel: 'Text to announce in accessibility modes',
                  ),

                  const SizedBox(
                    width: 15.0,
                  ),

                  OutlinedButton(
                      onPressed: _returnFlights,
                      style: TextButton.styleFrom(
                        // shape: RoundedRectangleBorder(
                        //     borderRadius: BorderRadius.circular(50)),
                        primary: Colors.blue,
                        fixedSize: const Size(175, 50),
                        side: const BorderSide(
                            color: Color(0xff4d69ff), width: 2),
                      ),
                      child: const Text(
                        'Flights',
                        style: TextStyle(color: Colors.black),
                      )),
                    ],
                  ),
                  
                  const SizedBox(
                    height: 10,
                  ),
                  
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment:CrossAxisAlignment.center,
                  children: <Widget>[
                  
                  const Icon(
                    Icons.car_rental,
                    color: Color(0xff4d69ff),
                    size: 24.0,
                    semanticLabel: 'Text to announce in accessibility modes',
                  ),

                  const SizedBox(
                    width: 15.0,
                  ),
                  
                  OutlinedButton(
                      onPressed: _returnCars,
                      style: TextButton.styleFrom(
                        // shape: RoundedRectangleBorder(
                        //     borderRadius: BorderRadius.circular(50)),
                        primary: Colors.blue,
                        fixedSize: const Size(175, 50),
                        side: const BorderSide(
                            color: Color(0xff4d69ff), width: 2),
                      ),
                      child: const Text(
                        'Cars',
                        style: TextStyle(color: Colors.black),
                      )),
                    ],
                  ),

                  const SizedBox(
                    height: 10,
                  ),


                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment:CrossAxisAlignment.center,
                    children: <Widget>[
                  
                  const Icon(
                    Icons.directions_boat,
                    color: Color(0xff4d69ff),
                    size: 24.0,
                    semanticLabel: 'Text to announce in accessibility modes',
                  ),

                  const SizedBox(
                    width: 15.0,
                  ),

                  TextButton(
                      onPressed: _returnAllInclusiveVactions,
                      style: TextButton.styleFrom(
                        // shape: RoundedRectangleBorder(
                        //     borderRadius: BorderRadius.circular(50)),
                        backgroundColor: const Color(0xff4d69ff),
                        primary: Colors.white,
                        fixedSize: const Size(175, 50),
                      ),
                      child: const Text(
                        'All-Inclusive Vacations',
                        style: TextStyle(color: Colors.white),
                      )),
                    ],
                  ),
                  
                  
                  const SizedBox(
                    height: 24,
                  ),
                  
                   //to separate or distance the widgets from each Other
                ],
              ),
              
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[
                  Text(
                    'Made with',
                    style: TextStyle(
                      letterSpacing: 2.0,
                      fontSize: 15.0,
                    ),
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
                      letterSpacing: 2.0,
                      fontSize: 15.0,
                    ),
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