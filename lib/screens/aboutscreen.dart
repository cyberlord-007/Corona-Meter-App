import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class AboutScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('About COVID 19'),
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

        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: <Widget>[
              Center(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blue[100],
                  ),
                  padding: EdgeInsets.all(10),
                  child: Text(
                    'Symptoms',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 10),
                height: 280,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.all(10),
                      width: 200,
                      child: Column(
                        children: <Widget>[
                          Image.asset('images/cough.jpg'),
                          Container(
                            padding: EdgeInsets.all(10),
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10)),
                              color: Colors.blue[100],
                            ),
                            child: Center(
                              child: Text(
                                'Cough',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      width: 200,
                      child: Column(
                        children: <Widget>[
                          Image.asset('images/highfever.jpg'),
                          Container(
                            padding: EdgeInsets.all(12),
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10)),
                              color: Colors.blue[100],
                            ),
                            child: Center(
                              child: Text(
                                'High Fever',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      width: 200,
                      child: Column(
                        children: <Widget>[
                          Image.asset('images/pneumonia.jpg'),
                          Container(
                            padding: EdgeInsets.all(10),
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10)),
                              color: Colors.blue[100],
                            ),
                            child: Center(
                              child: Text(
                                'Pneumonia',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      width: 200,
                      child: Column(
                        children: <Widget>[
                          Image.asset('images/runnynose.jpg'),
                          Container(
                            padding: EdgeInsets.all(10),
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10)),
                              color: Colors.blue[100],
                            ),
                            child: Center(
                              child: Text(
                                'Runny Nose',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Center(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.blue[100],
                  ),
                  padding: EdgeInsets.all(10),
                  child: Text(
                    'Prevention',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                height: 280,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Column(
                        children: <Widget>[
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.all(10),
                              color: Colors.green[100],
                              child: CircleAvatar(
                                backgroundImage: AssetImage('images/wearmasks.jpg'),
                                radius: 80,
                              ),
                            ),
                          ),
                          Container(
                            width: 180,
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10)),
                              color: Colors.blue[100],
                            ),
                            child: Center(
                              child: Text(
                                'Wear Masks',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Column(
                        children: <Widget>[
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.all(10),
                              color: Colors.green[100],
                              child: CircleAvatar(
                                backgroundImage: AssetImage('images/cleanhands.jpg'),
                                radius: 80,
                              ),
                            ),
                          ),
                          Container(
                            width: 180,
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10)),
                              color: Colors.blue[100],
                            ),
                            child: Center(
                              child: Text(
                                'Wash Hands',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Column(
                        children: <Widget>[
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.all(10),
                              color: Colors.green[100],
                              child: CircleAvatar(
                                backgroundImage: AssetImage('images/sanitizer.jpg'),
                                radius: 80,
                              ),
                            ),
                          ),
                          Container(
                            width: 180,
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10)),
                              color: Colors.blue[100],
                            ),
                            child: Center(
                              child: Text(
                                'Use sanitizers',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(10),
                      child: Column(
                        children: <Widget>[
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.all(10),
                              color: Colors.green[100],
                              child: CircleAvatar(
                                backgroundImage: AssetImage('images/avoidcrowd.jpg'),
                                radius: 80,
                              ),
                            ),
                          ),
                          Container(
                            width: 180,
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10),bottomRight: Radius.circular(10)),
                              color: Colors.blue[100],
                            ),
                            child: Center(
                              child: Text(
                                'Avoid Crowd',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.blue[200],
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: <Widget>[
                    Text(
                      'To know more about COVID-19, it\'s symptoms and preventions,please refer our FAQs section or WHO official website. ',
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                    RaisedButton(
                      onPressed: (){
                        launch('https://www.who.int/health-topics/coronavirus#tab=tab_1');
                      },
                      color: Colors.blue,
                      splashColor: Colors.green,
                      child: Text(
                        'Go to WHO website',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
