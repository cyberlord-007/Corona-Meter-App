import 'package:coronameterapp/screens/donate.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'screens/faq_screen.dart';
import 'screens/donate.dart';
import 'screens/aboutscreen.dart';

class Header extends StatefulWidget {
  @override
  _HeaderState createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: MyClipper(),
      child: Container(
        padding: EdgeInsets.only(left: 40, top: 50, right: 40),
        height: 350,
        width: double.infinity,
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
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(backgroundImage: AssetImage('images/circle-cropped.png'),),
                SizedBox(width: 10),
                Text(
                  'Corona Meter',
                  style: TextStyle(
                    fontSize:24,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue[100],
                  ),
                ),
              ],
            ),
            Divider(color: Colors.blue,),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Text(
                'Stay Home,\nStay Safe...',
                style: TextStyle(
                  fontSize: 38,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return AboutScreen();
                    }));
                  },
                  child: Container(
                    child: Column(
                      children: <Widget>[
                        Icon( 
                            FontAwesomeIcons.info,
                          color: Colors.white,
                          size: 25,
                        ),
                        SizedBox(height: 5),
                        Text('About',style: TextStyle(color: Colors.white70,fontWeight: FontWeight.bold),),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap:(){
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return Donate();
                    }));
                  },
                  child: Container(
                    child: Column(
                      children: <Widget>[
                        Icon(
                          FontAwesomeIcons.donate,
                          color: Colors.white,
                          size: 25,
                        ),
                        SizedBox(height: 5),
                        Text('Donate',style: TextStyle(color: Colors.white70,fontWeight: FontWeight.bold),),
                      ],
                    ),
                  ),
                ),  
                GestureDetector(
                  onTap:(){
                    Navigator.push(context, MaterialPageRoute(builder: (context){
                      return FAQscreen();
                    }));
                  },
                  child: Container(
                    child: Column(
                      children: <Widget>[
                        Icon(
                          FontAwesomeIcons.solidQuestionCircle,
                          color: Colors.white,
                          size: 25,
                        ),
                        SizedBox(height: 5),
                        Text('FAQs',style: TextStyle(color: Colors.white70,fontWeight: FontWeight.bold),),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - 80);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height - 80);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
