import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Worldwide extends StatelessWidget {
  final Map worldData;
  Worldwide({this.worldData});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView(
        shrinkWrap: true,
        physics: NeverScrollableScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,childAspectRatio: 2),
        children: <Widget>[
          StatusBox(boxColor: Colors.red[100],textColor: Colors.red[900],title: 'CONFIRMED',data: worldData['cases'].toString()),
          StatusBox(boxColor: Colors.blue[100],textColor: Colors.blue[900],title: 'ACTIVE',data: worldData['active'].toString()),
          StatusBox(boxColor: Colors.lightGreen,textColor: Colors.green[900],title: 'RECOVERED',data: worldData['recovered'].toString()),
          StatusBox(boxColor: Colors.grey,textColor: Colors.black,title: 'DEATHS',data: worldData['deaths'].toString(),),
        ],
      ),
    );
  }
}

class StatusBox extends StatelessWidget {
  final Color boxColor;
  final Color textColor;
  final String title;
  final String data;
  StatusBox({this.boxColor,this.textColor,this.title,this.data});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.all(8),
      height: 80,
      width: width/2,
      decoration: BoxDecoration(
        color: boxColor,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: textColor,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            data,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
