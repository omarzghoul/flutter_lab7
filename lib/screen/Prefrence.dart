import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_lab7/main.dart';

class Perfrence extends StatefulWidget {
  const Perfrence({super.key});

  @override
  State<Perfrence> createState() => _PerfrenceState();
}

class _PerfrenceState extends State<Perfrence> {
  String fontStyle = "GloriaHallelujah";
  String conutry = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
            Colors.yellow.shade100,
            Colors.brown.shade100,
            Colors.teal.shade200
          ])),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton.icon(
                onPressed: () {
                  setState(() {
                    Navigator.pop(context, MaterialPageRoute(
                      builder: (context) {
                        return MyApp();
                      },
                    ));
                  });
                },
                icon: Icon(
                  Icons.home,
                  color: Colors.black,
                ),
                label: Text(
                  "Home Page",
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.yellow[50]),
              ),
              Column(
                children: [
                  Container(
                    child: Text(
                      "Where you want to travel ?",
                      style: TextStyle(fontSize: 30),
                    ),
                    color: Colors.white,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  coustmRadioListTile("Jordan", "Eg.amman"),
                  SizedBox(
                    height: 10,
                  ),
                  coustmRadioListTile("UAE", "Eg.Dubai"),
                  SizedBox(
                    height: 10,
                  ),
                  coustmRadioListTile("Egypt", "Eg.Sharm"),
                ],
              ),
            ],
          )),
    );
  }

  Widget coustmRadioListTile(String val, String subTitle) {
    return Container(
      color: Colors.grey[100],
      child: RadioListTile(
        value: "$val",
        title: Text("$val"),
        subtitle: Text("$subTitle"),
        secondary: Icon(Icons.card_travel),
        groupValue: conutry,
        onChanged: (value) {
          setState(() {
            conutry = value.toString();
          });
        },
      ),
    );
  }
}
