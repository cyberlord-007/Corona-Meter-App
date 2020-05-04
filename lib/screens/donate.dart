import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Donate extends StatefulWidget {
  
  @override
  _DonateState createState() => _DonateState();
}

class _DonateState extends State<Donate> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Color(0xFF3383CD),
              Color(0xFF11249F),
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius: 100,
                backgroundImage: AssetImage('images/donate.jpg'),
              ),
              SizedBox(height: 20),
              Divider(
                color: Colors.tealAccent,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                child: Text(
                  '\"We are together in this fight for survival,\nto triumph we all have to do our parts,lend a helping hand to the ones lost in this darkness.\" ',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontFamily: 'Dancing Script'
                  ),
                ),
              ),
              SizedBox(height: 30),
              RaisedButton(
                color: Colors.tealAccent,
                onPressed: () {
                  launch(
                      'https://www.who.int/emergencies/diseases/novel-coronavirus-2019/donate');
                },
                child: Text('Donate'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
