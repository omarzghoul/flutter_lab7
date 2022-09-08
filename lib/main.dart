import 'package:flutter/material.dart';

import 'package:flutter_lab7/screen/Information.dart';
import 'screen/Prefrence.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Home();
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String fontStyle = "Righteous";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.indigo.shade200, Colors.blue.shade400])),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Colors.green.shade200,
                      Colors.yellow.shade100
                    ]),
                    borderRadius: BorderRadius.all(Radius.circular(30))),
                child: Container(
                  margin: EdgeInsets.all(16),
                  color: Colors.yellow[50],
                  child: Text(
                    "Welcome to our travel app",
                    style: TextStyle(fontSize: 40),
                  ),
                ),
              ),
              Column(
                children: [
                  ElevatedButton.icon(
                    onPressed: () {
                      setState(() {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return Perfrence();
                          },
                        ));
                      });
                    },
                    label: Text(
                      "Your Prefrence Page",
                      style: TextStyle(fontFamily: fontStyle),
                    ),
                    icon: Icon(Icons.favorite),
                  ),
                  ElevatedButton.icon(
                    onPressed: () {
                      setState(() {
                        Navigator.push(context, MaterialPageRoute(
                          builder: (context) {
                            return Information();
                          },
                        ));
                      });
                    },
                    label: Text(
                      "Fill Your information",
                      style: TextStyle(fontFamily: fontStyle),
                    ),
                    icon: Icon(Icons.favorite),
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
