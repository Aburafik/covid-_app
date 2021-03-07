 import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({this.colour,this.image,this.label,this.tap});
  final Color colour;
  final String image;
  final String label;
  final Function tap;

  @override
  Widget build(BuildContext context) {

    return Stack(
      children: <Widget>[
        GestureDetector(
          onTap: tap,
          child: Container(

            padding: EdgeInsets.symmetric(horizontal: 30),
            margin: EdgeInsets.only(left: 10,right: 10),
            height: 100,

            decoration: BoxDecoration(borderRadius:BorderRadius.circular(10,),color: colour),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(label,style: TextStyle(fontWeight: FontWeight.w800,color: Colors.black87,fontSize: 17 ),),
                CircleAvatar(
                  backgroundImage: AssetImage(image),
                )
              ],
            ),
          ),
        ),
        Align(
          alignment:Alignment.centerLeft,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              shape:BoxShape.circle,
            ),
            margin: EdgeInsets.only(right: 315,top: 40),
            height: 30,
            width: 30,

          ),
        ),
        Align(
          alignment: Alignment.centerRight,
          child: Container(
            decoration:BoxDecoration(
              color: Colors.white,
              shape:BoxShape.circle,
            ),
            margin: EdgeInsets.only(left: 315,top: 40),
            height: 30,
            width: 30,

          ),
        ),
      ],
    ) ;
  }
}
