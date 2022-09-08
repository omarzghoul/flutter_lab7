import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lab7/main.dart';

class Information extends StatefulWidget {
  const Information({super.key});

  @override
  State<Information> createState() => _InformationState();
}

class _InformationState extends State<Information> {
  List myList = ["1 person", "2 person", "2-5 person", "6-8 person"];
  String selctedItem = "1 person";
  String fontStyle = "DancingScript";
  String classTravel = "";

  bool check1 = false;
  bool check2 = false;
  bool check3 = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.yellow.shade100, Colors.blue.shade300])),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: Colors.yellow[100],
                child: Text(
                  "Please Enter Your Information",
                  style: TextStyle(fontSize: 25),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "How many person ?",
                style: TextStyle(fontSize: 30),
              ),
              Divider(color: Colors.green, thickness: 3),
              Container(
                alignment: Alignment.center,
                color: Colors.red[100],
                width: double.infinity,
                child: DropdownButton(
                  items: myList
                      .map((e) => DropdownMenuItem(
                          value: e,
                          child: Text(
                            "$e",
                            style:
                                TextStyle(fontFamily: fontStyle, fontSize: 20),
                          )))
                      .toList(),
                  value: selctedItem,
                  onChanged: (value) {
                    setState(() {
                      selctedItem = value.toString();
                    });
                  },
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                "Please Select Your Class",
                style: TextStyle(fontSize: 30),
              ),
              Divider(color: Colors.green, thickness: 3),
              RadioListTile(
                value: "Business",
                title: Text("Business"),
                subtitle: Text("250\$ per person"),
                secondary: Icon(Icons.card_travel),
                groupValue: classTravel,
                onChanged: (value) {
                  setState(() {
                    classTravel = value.toString();
                  });
                },
              ),
              RadioListTile(
                value: "Economy",
                title: Text("Economy"),
                subtitle: Text("150\$ per person"),
                secondary: Icon(Icons.card_travel),
                groupValue: classTravel,
                onChanged: (value) {
                  setState(() {
                    classTravel = value.toString();
                  });
                },
              ),
              SizedBox(
                height: 50,
              ),
              Text(
                "Please Select what ever you have during the trip",
                style: TextStyle(fontSize: 20),
              ),
              Divider(color: Colors.green, thickness: 3),
              CheckboxListTile(
                title: Text("Pets"),
                subtitle: Text("Eg.Cats"),
                secondary: Icon(Icons.pets),
                value: check1,
                onChanged: (value) {
                  setState(() {
                    check1 = value!;
                  });
                },
              ),
              CheckboxListTile(
                title: Text("Medicine"),
                subtitle: Text("Eg."),
                secondary: Icon(Icons.medical_services_rounded),
                value: check2,
                onChanged: (value) {
                  setState(() {
                    check2 = value!;
                  });
                },
              ),
              CheckboxListTile(
                title: Text("Weapon"),
                subtitle: Text("Eg."),
                secondary: Icon(Icons.close),
                value: check3,
                onChanged: (value) {
                  setState(() {
                    check3 = value!;
                  });
                },
              ),
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
                  icon: Icon(Icons.home),
                  label: Text("Home Page"))
            ],
          ),
        ),
      ),
    );
  }
}
