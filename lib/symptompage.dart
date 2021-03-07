import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:covid_19_app/symptomcard.dart';

class SymptomPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff7f7f7),
      appBar: AppBar(

        iconTheme: IconThemeData(color: Colors.black87),
        backgroundColor: Color(0xfff7f7f7),
        elevation: 0,

        centerTitle: true,
        title: Text(
          'Symptoms',
          style: TextStyle(
              fontSize: 24, color: Colors.black87, fontWeight: FontWeight.w800),
        ),
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Card(
                    child: Container(
                      height: 100,
                      child: Center(
                        child: Row(
                          children: [
                            Container(
                              width: 100,
                              height: 100,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('images/covid19.jpeg'),
                                ),
                              ),
                            ),
                            SizedBox(width: 10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Dry Cough',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                SizedBox(height: 5),
                                Text("A drt cough is a cough that doesn't "),
                                Text('bring up mucus')
                              ],
                            ),
                          ],
                        ),
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white60,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Sections(
                          image: 'images/covid19.jpeg',
                          firtText: 'Fever',
                          secondText: "A temperature that's",
                          thirdText: 'higher than normal',
                          fouthText: 'Typically around',
                          fifthText: '38.7 C',
                        ),
                      ),
                      SizedBox(width: 6),
                      Expanded(
                          child: Sections(
                        image: ('images/covid19.jpeg'),
                        firtText: 'Runny Nose',
                        secondText: 'Mucus draining or',
                        thirdText: 'dripping from the',
                        fouthText: 'nostrils',
                        fifthText: '',
                      ))
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Sections(
                            image: ('images/covid19.jpeg'),
                            firtText: 'Sore Throat',
                            secondText: 'A sore throat is a',
                            thirdText: 'painful,dry or scratchy',
                            fouthText: 'feeling in the throat',
                            fifthText: ''),
                      ),
                      SizedBox(width: 6),
                      Expanded(
                        child: Sections(
                          image: ('images/covid19.jpeg'),
                          firtText: 'Fatigue',
                          secondText: 'You have no motivation,',
                          thirdText: 'no energy and overall',
                          fouthText: 'feeling of tiredness',
                          fifthText: '',
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 5.0,
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10)),
                        color: Color(0xffe87d24),
                      ),
                      padding: EdgeInsets.only(left: 10),
                      height: 60,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Icon(
                            Icons.brightness_5,
                            color: Color(0xffd8c22a),
                            size: 60,
                          ),
                          SizedBox(
                            width: 50,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                'Self Check Up on Covid-19',
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500),
                              ),
                              Text(
                                'Have you experienced any of the\nfollowing symptoms ',
                                style: TextStyle(
                                    fontSize: 15, color: Colors.white70),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Sections extends StatelessWidget {
  final String firtText;
  final String secondText;
  final String thirdText;
  final String fouthText;
  final String fifthText;
  final String image;

  Sections(
      {this.image,
      this.fifthText,
      this.firtText,
      this.thirdText,
      this.secondText,
      this.fouthText});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Container(
        child: Center(
          child: Column(
            children: [
              Container(
                width: 200,
                height: 100,
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage(image))),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  firtText,
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.w600),
                ),
              ),
              Text(secondText),
              Text(thirdText),
              Text(fouthText),
              Text(fifthText),
            ],
          ),
        ),
        height: 200,
        decoration: BoxDecoration(
            color: Colors.white60, borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}
