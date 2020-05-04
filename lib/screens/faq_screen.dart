import 'package:flutter/material.dart';
import 'package:coronameterapp/faqsource.dart';

class FAQscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('FAQs'),
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
      body: ListView.builder(
        itemCount: FAQsource.FAQ.length,
        itemBuilder: (context,index){
          return ExpansionTile(
            title: Text(
              FAQsource.FAQ[index]['question'],
              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),
            ),
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  FAQsource.FAQ[index]['answer'],
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
            ],
          );
        }),
    );
  }
}
