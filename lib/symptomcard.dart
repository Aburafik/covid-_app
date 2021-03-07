import 'package:flutter/material.dart';

class SymptomCard extends StatelessWidget {
  SymptomCard({this.label1, this.label2});

  final String label1;
  final String label2;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        height: 200,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                height: 100,
                width: 200,
               decoration:BoxDecoration(image: DecorationImage(
                 image: AssetImage('images/covid19.jpeg'),
               )),

              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  label1,
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black87,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  label2,
                  style: TextStyle(
                      fontSize: 12,
                      color: Colors.black54,
                      fontWeight: FontWeight.bold),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
