import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:pie_chart/pie_chart.dart';
class CountryPanel extends StatelessWidget {
  @override

  final Map countryInfo;
  CountryPanel({this.countryInfo});


  Widget build(BuildContext context) {
    return countryInfo==null?Text('Sorry'):Container(
      width: double.infinity ,
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: <Color>[
            Colors.yellow,
            Colors.orangeAccent,
          ],
        ),
      ),
      child: Column(
        children: <Widget>[
          CircleAvatar(
            radius: 80,
            backgroundImage: NetworkImage(countryInfo['countryInfo']['flag']),
          ),
          SizedBox(height: 10),
          Divider(color: Colors.indigo),
          SizedBox(height: 10),
          Text(countryInfo['country'],style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,),),
      Container(
        child: GridView(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,childAspectRatio: 2),
          children: <Widget>[
            StatusBox(boxColor: Colors.red[100],textColor: Colors.red[900],title: 'CONFIRMED',data: countryInfo['cases'].toString()),
            StatusBox(boxColor: Colors.blue[100],textColor: Colors.blue[900],title: 'ACTIVE',data: countryInfo['active'].toString()),
            StatusBox(boxColor: Colors.lightGreen,textColor: Colors.green[900],title: 'RECOVERED',data: countryInfo['recovered'].toString()),
            StatusBox(boxColor: Colors.grey,textColor: Colors.black,title: 'DEATHS',data: countryInfo['deaths'].toString(),),
          ],
        ),
      ),
          SizedBox(height: 20),
          PieChart(
            dataMap: {
              'Active': countryInfo['active'].toDouble(),
              'Recovered': countryInfo['recovered'].toDouble(),
              'Deaths': countryInfo['deaths'].toDouble(),

            },
            animationDuration: Duration(milliseconds: 800),
            chartLegendSpacing: 32.0,
            chartRadius: MediaQuery.of(context).size.width / 2.7,
            showChartValuesInPercentage: true,
            showChartValues: true,
            showChartValuesOutside: false,
            chartValueBackgroundColor: Colors.grey[200],
            showLegends: true,
            legendPosition: LegendPosition.right,
            decimalPlaces: 1,
            showChartValueLabel: true,
            initialAngle: 0,
            chartValueStyle: defaultChartValueStyle.copyWith(
              color: Colors.blueGrey[900].withOpacity(0.9),
            ),
            chartType: ChartType.disc,
          ),
          SizedBox(height: 20),
          Container(
            height: 180,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: <Widget>[
                Container(
                  height: 40,
                  color: Colors.grey,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Icon(FontAwesomeIcons.calendar,color: Colors.black,size: 20,),
                        SizedBox(width: 90),
                        Text(
                          'Daily Updates',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        FontAwesomeIcons.arrowCircleRight,
                        size: 18,
                      ),
                      SizedBox(width: 30),
                      Text(
                        'New cases recorded today : '+ countryInfo['todayCases'].toString(),
                        style: TextStyle(color: Colors.red,fontSize: 15,fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        FontAwesomeIcons.arrowCircleRight,
                        size: 18,
                      ),
                      SizedBox(width: 30),
                      Text(
                        'New deaths recorded today : '+ countryInfo['todayDeaths'].toString(),
                        style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        FontAwesomeIcons.arrowCircleRight,
                        size: 18,
                      ),
                      SizedBox(width: 30),
                      Text(
                        'Cases per one million people : '+ countryInfo['casesPerOneMillion'].toString(),
                        style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
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
