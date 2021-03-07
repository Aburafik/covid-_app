import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Instructions extends StatelessWidget {
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
          'Do\'s & Don\'t',
          style: TextStyle(
              fontSize: 24, color: Colors.black87, fontWeight: FontWeight.w800),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ListView(
            children: <Widget>[
              InstructionCard(
                text1: 'Wash your hands frequently',
                text2: 'Wash your hand often with soap and',
                text3: 'water for at least 20 seconds ',
                image: 'images/covid19.jpeg',
                colour: Color(0xff3b978e),
              ),
              SizedBox(height: 10,),
              InstructionCard(
                text1: 'Cover Coughs',
                text2: 'While coughing or sneezing cover',
                text3: 'your mouth and nose with handkerchief ',
                image: 'images/covid19.jpeg',
                colour: Color(0xffd84b6b),
              ),
              SizedBox(height: 10,),
              InstructionCard(
                text1: 'Avoid crowded places',
                text2: 'Avoid large events mass',
                text3: 'gatherings',
                image: 'images/covid19.jpeg',
                colour: Color(0xff3b978e),

              ),
              SizedBox(height: 10,),
              InstructionCard(
                text1: 'Avoid touching everything',
                text2: 'Avoid touching your eyes nose and',
                text3: 'mouths if your hands aren\'t clean',
                image: 'images/covid19.jpeg',
                colour: Color(0xffd84b6b),

              ),
              SizedBox(height: 10,),
              InstructionCard(
                text1: 'Use mask',
                text2: 'Cover your nose and mouth with',
                text3: 'disposable tissue or handkerchief',
                image: 'images/covid19.jpeg',
                colour: Color(0xff3b978e),

              ),
          SizedBox(height: 10,),
          InstructionCard(
            text1: 'Avoid close contact',
            text2: 'Avoid close contact(about 6 feet) with',
            text3: 'anyone who is sick or has symptoms',
            image: 'images/covid19.jpeg',
            colour: Color(0xffd84b6b),

          ), ],
          ),
        ),
      ),
    );
  }
}

class InstructionCard extends StatelessWidget {
  const InstructionCard({this.colour,this.text1,this.text2,this.text3, this.image});
  final Color colour;
  final String text1;
  final String text2;
  final String text3;
  final String  image;

@override
Widget build(BuildContext context) {
  return Container(
    height: 100,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
    ),
    child: Row(
      children: [
        SizedBox(
          width: 10,
        ),
        Container(
          width: 100,
          height: 90,
          padding: EdgeInsets.all(10.0),
          decoration: BoxDecoration(

            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(image),
            ),
          ),
        ),
        SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text1,
              style: TextStyle(fontWeight: FontWeight.bold,color: colour),
            ),
            SizedBox(height: 5),
            Text(text2),
            Text(text3)
          ],
        ),
      ],
    ),
  );
}}
