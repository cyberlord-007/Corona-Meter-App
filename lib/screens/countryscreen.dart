import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import '../panels/countrypanel.dart';


class CountryScreen extends StatefulWidget {
  @override
  _CountryScreenState createState() => _CountryScreenState();
}

class _CountryScreenState extends State<CountryScreen> {
  String country;
  Map countryInfo;
  void fetchCountry(String searchText)async{
    http.Response response = await http.get('https://corona.lmao.ninja/v2/countries/$searchText');
    setState(() {
       countryInfo = jsonDecode(response.body);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: Colors.lightBlue[100],
      appBar: AppBar(
        centerTitle: true,
        title: Text('Country Statistics'),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: <Color>[
                Color(0xFF3383CD),
                Color(0xFF11249F),
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(20),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hasFloatingPlaceholder: true,
                        labelText: 'Search Country',
                        labelStyle: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        filled: true,
                        fillColor: Colors.blue[100],
                        suffixIcon: Icon(
                          Icons.search,
                          color: Colors.black,
                        ),
                      ),
                      onChanged: (value){
                        country = value;
                      },
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    height: 55,
                    width: 100,
                    child: RaisedButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                      ),
                      color: Colors.indigo,
                      splashColor: Colors.green,
                      padding: EdgeInsets.all(10),
                      child: Text(
                          'Search',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                      onPressed: (){
                        FocusScope.of(context).requestFocus(new FocusNode());
                        fetchCountry(country);
                      },
                    ),
                  ),
                ],
              ),
            ),
            countryInfo==null?Container(
              margin: EdgeInsets.all(40),
              child: Column(
                children: <Widget>[
                  Image(image: AssetImage('images/circle-cropped.png'),),
                  Text(
                    'Corona Meter',
                    style: TextStyle(
                      color: Colors.blue[900],
                      fontWeight: FontWeight.bold,
                      fontSize: 50,
                    ),
                  ),
                ],
              ),
            ):CountryPanel(countryInfo: countryInfo,),
          ],
        ),
      ),
    );
  }
}
