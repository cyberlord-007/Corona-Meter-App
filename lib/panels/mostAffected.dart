import 'package:flutter/material.dart';

class MostAffected extends StatelessWidget {

  final List countryData;
  MostAffected({this.countryData});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          itemBuilder: (context,index){
        return Container(
          margin: EdgeInsets.symmetric(vertical: 5,horizontal: 10),
          child: Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [
                    Colors.yellow,
                    Colors.orangeAccent,
                  ],
                ),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: <Widget>[
                Image.network(countryData[index]['countryInfo']['flag'],height: 40,),
                SizedBox(
                  width: 10,
                ),
                Text(countryData[index]['country'],style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),),
                SizedBox(
                  width: 10,
                ),
                Text('Deaths:'+ countryData[index]['deaths'].toString(),style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.red,
                ),),
              ],
            ),
          ),
        );
      },itemCount: 5),

    );
  }
}
