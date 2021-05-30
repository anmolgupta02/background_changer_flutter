import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Color myColor = Colors.white70;
  List<String> list = ["Red", "Black", "Orange", "Blue"];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Background Changer',
          ),
          centerTitle: true,
        ),
        backgroundColor: myColor,
        body: SafeArea(
          child: Container(
            child: ListView.builder(
              itemCount: list.length,
              itemBuilder: (context, index) {
                return InkWell(
                  child: ListTile(
                    leading: Icon(
                      Icons.circle,
                      color: (myColor == Colors.black)
                          ? Colors.white
                          : Colors.black,
                    ),
                    title: Text(
                      "Tap to change into ${list[index]} color",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: (myColor == Colors.black)
                              ? Colors.white
                              : Colors.black),
                    ),
                  ),
                  onTap: () {
                    print("clicked on ${list[index]} element");
                    switch (list[index]) {
                      case "Red":
                        {
                          setState(() {
                            myColor = Colors.red;
                          });
                        }
                        break;
                      case "Black":
                        {
                          setState(() {
                            myColor = Colors.black;
                          });
                        }
                        break;
                      case "Orange":
                        {
                          setState(() {
                            myColor = Colors.orange;
                          });
                        }
                        break;
                      case "Blue":
                        {
                          setState(() {
                            myColor = Colors.blue;
                          });
                        }
                        break;
                    }
                  },
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
