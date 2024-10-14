import 'package:flutter/material.dart';

class ExplorStyle extends StatefulWidget {
  const ExplorStyle({super.key});

  @override
  State<ExplorStyle> createState() => _ExplorStyleState();
}

class _ExplorStyleState extends State<ExplorStyle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: MediaQuery.of(context).size.height*0.5,
                width: MediaQuery.of(context).size.width*1,
                color: Colors.white,
                child:
                const Padding(
                  padding:  EdgeInsets.only(top: 110),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Explore your true style",style: TextStyle(color: Colors.black54,fontSize: 24,fontWeight: FontWeight.bold),),
                      Text("Relax and let us bring the style to you",style: TextStyle(color: Colors.black54,fontSize: 15,fontWeight: FontWeight.bold),),
                    ],
                  ),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height*0.5,
                width: 400,
                color: Colors.black87,
              )
            ],
          ),
          Center(
            child:
            Container(
              height: 368,
              width: 261,
              child:
              Card(

                child: Image.asset("assets/images/girlimage.png",fit: BoxFit.cover),),
            ),
          ),
        ],
      )
      ,
    );
  }
}
