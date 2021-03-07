import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'detailpage.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo[500],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              Expanded(
                flex: 8,
                child: Container(
                  child: Column(
                    children: <Widget>[
                      Expanded(
                        flex: 2,
                        child: Column(
                          children: <Widget>[
                            Row(

                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  'C',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 40),
                                ),
                                Icon(
                                  Icons.brightness_5,
                                  color: Colors.white,
                                  size: 40,
                                ),
                                Text(
                                  'RONA VIRUS',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 40),
                                )
                              ],
                            ),
                            Text(
                              'CORONAVIRUS DISEASE',
                              style: TextStyle(
                                  color: Colors.white54,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 18),
                            )
                          ],
                        ),
                      ),
                      Expanded(
                          flex: 0,
                          child: CircleAvatar(
                              radius: 110,
                              backgroundImage:
                                  AssetImage('images/covid19.jpeg'))),
                      Expanded(
                        flex: 2,
                        child: Column(
                          children: <Widget>[
                            Text(
                              '  Find how to protect\nyourself from covid-19',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w300,
                                  fontSize: 22),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              'Stay aware of the latest information\n         on covid-19 outbreak',
                              style: TextStyle(
                                  color: Colors.white54,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 15),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: (){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DetailPage()),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(60, 45, 60, 45),
                  child: Container(
                    height: 40,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0xff8291c8),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                        child: Text(
                      'Get Started',
                      style: TextStyle(color: Colors.white70, fontSize: 18),
                      textAlign: TextAlign.center,
                    )),
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
