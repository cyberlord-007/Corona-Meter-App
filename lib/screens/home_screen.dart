import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../header.dart';
import 'dart:convert';
import '../panels/worldwide_panel.dart';
import 'package:http/http.dart' as http;
import '../panels/mostAffected.dart';
import 'countryscreen.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Map worldData;
  List countryData;
  void fetchData() async{
    http.Response response = await http.get('https://corona.lmao.ninja/v2/all');
    setState(() {
      worldData = jsonDecode(response.body);
    });
  }

  void fetchCountryData()async{
    http.Response response = await http.get('https://corona.lmao.ninja/v2/countries?sort=deaths');
    setState(() {
      countryData = jsonDecode(response.body);
    });
  }

  Future <void>  refresh()async{
    fetchData();
    fetchCountryData();
  }

  @override
  void initState() {
    refresh();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RefreshIndicator(
        onRefresh: refresh,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Header(),
              Padding(
                padding: const EdgeInsets.only(left:10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Worldwide',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context){
                          return CountryScreen();
                        }));
                      },
                      child: Container(
                        margin: EdgeInsets.only(right: 10),
                        decoration: BoxDecoration(
                          color: Colors.indigo,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            'Regional',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
               worldData==null?Container(
                 margin: EdgeInsets.only(top: 10,bottom: 10),
                 alignment: Alignment.center,
                 child: CircularProgressIndicator(),
               ): Worldwide(worldData:worldData),
              Padding(
                padding: const EdgeInsets.only(left: 10,top: 10),
                child: Text(
                  'Afflicted Nations',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                  ),
                ),
              ),
              countryData==null?Container():MostAffected(countryData:countryData),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 40,vertical: 20),
                child: Center(
                  child: Text(
                      'Developed By: Akash Chaudhary\n              Flutter Developer',
                    style: TextStyle(fontWeight: FontWeight.bold),

                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
