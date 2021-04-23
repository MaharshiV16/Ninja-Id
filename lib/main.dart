import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int level = 0;
  void pressed1() {
    setState(() {
      if (level < 10) {
        level++;
      }
    });
  }

  void pressed2() {
    setState(() {
      if (level > 0) {
        level--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: AppBar(
          title: Text(
            "Ninja ID Card",
            style: TextStyle(
              letterSpacing: 2,
              fontWeight: FontWeight.bold,
              fontSize: 22,
            ),
          ),
          centerTitle: true, // to center the title
          backgroundColor: Colors.grey[850],
          elevation: 0, // to remove the shadow
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(
            vertical: 50,
            horizontal: 50,
          ),
          child: Column(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('assets/laptop.jpg'),
                radius: 75,
              ),
              Divider(
                height: 50,
                thickness: 2,
                color: Colors.amber[400],
              ),
              Row(
                children: [
                  Text(
                    "NAME:  ",
                    style: TextStyle(
                      color: Colors.grey,
                      letterSpacing: 2,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Maharshi",
                    style: TextStyle(
                      color: Colors.amber[400],
                      letterSpacing: 3,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      fontFamily: 'Pacifico',
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    "CURRENT NINJA LEVEL:  ",
                    style: TextStyle(
                      color: Colors.grey,
                      letterSpacing: 2,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "$level",
                    style: TextStyle(
                      color: Colors.amber[400],
                      letterSpacing: 3,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      fontFamily: 'Pacifico',
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Icon(
                    Icons.email_rounded,
                    color: Colors.grey,
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "20bcs004@nith.ac.in",
                    style: TextStyle(
                        color: Colors.amber[400],
                        letterSpacing: 3,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        fontFamily: 'Pacifico'),
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Divider(
                height: 50,
                thickness: 2,
                color: Colors.amber[400],
              ),
              Row(
                children: [
                  ElevatedButton.icon(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.resolveWith<Color>(
                        (Set<MaterialState> states) {
                          if (states.contains(MaterialState.pressed))
                            return Colors.amber[400];
                          return Colors.amber[400];
                        },
                      ),
                    ),
                    icon: Icon(
                      Icons.add,
                      color: Colors.grey[850],
                    ),
                    onPressed: pressed1,
                    label: Text(
                      "Level",
                      style: TextStyle(
                        color: Colors.grey[850],
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        letterSpacing: 2,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 40,
                  ),
                  ElevatedButton.icon(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.resolveWith<Color>(
                        (Set<MaterialState> states) {
                          if (states.contains(MaterialState.pressed))
                            return Colors.amber[400];
                          return Colors.amber[400];
                        },
                      ),
                    ),
                    label: Text(
                      "Level",
                      style: TextStyle(
                        color: Colors.grey[850],
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        letterSpacing: 2,
                      ),
                    ),
                    icon: Icon(
                      Icons.remove,
                      color: Colors.grey[850],
                    ),
                    onPressed: pressed2,
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
