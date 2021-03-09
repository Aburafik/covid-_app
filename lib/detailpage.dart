import 'package:covid_19_app/Instructions.dart';
import 'package:covid_19_app/symptompage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'reusablecard.dart';

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        bottomNavigationBar: BottomNavigationBar(
          fixedColor: Color(0xff3b978e),
          backgroundColor: Color(0xfff5f5f5),
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.home), title: Text('Home')),
            BottomNavigationBarItem(
                icon: Icon(Icons.library_books), title: Text('News')),
            BottomNavigationBarItem(
                icon: Icon(Icons.chat), title: Text('Chat')),
          ],
        ),
        body: SingleChildScrollView(
          // To remove the overflowing error wrap the sagfeArea with SingleChildScrollView

          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Home',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ReusableCard(
                    tap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SymptomPage()),
                      );
                    },
                    colour: Color(0xff4cb4a3),
                    label: 'Symptoms',
                    image: 'images/covid19.jpeg',
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  ReusableCard(
                    tap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Instructions()),
                      );
                    },
                    colour: Color(0xfffad752),
                    label: 'Do\'s & Don\'t',
                    image: 'images/covid19.jpeg',
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  ReusableCard(
                    colour: Color(0xfff48a8f),
                    label: 'Virus',
                    image: 'images/covid19.jpeg',
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  ReusableCard(
                    colour: Color(0xff74b8f0),
                    label: 'Myth',
                    image: 'images/covid19.jpeg',
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomLeft: Radius.circular(10)),
                      color: Color(0xff903873),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 30),
                    margin: EdgeInsets.only(left: 10, right: 10),
                    height: 100,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        CircleAvatar(
                          radius: 35,
                          backgroundImage: AssetImage('images/covid19.jpeg'),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Text(
                                  'Coronavirus Tes;t',
                                  style: TextStyle(
                                      fontSize: 18,
                                      color: Color(0xffd8c22a),
                                      fontWeight: FontWeight.w500),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Icon(
                                  Icons.navigate_next,
                                  color: Color(0xffd8c22a),
                                )
                              ],
                            ),
                            Text(
                              'Stay aware of the latest\n information on the. ',
                              style: TextStyle(
                                  fontSize: 15, color: Colors.white70),
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
