import 'package:flutter/material.dart';
import 'package:fluxstor_figma_design/login_sign_up_screens/sign_up_screen.dart';

class ShoppingScreen1 extends StatefulWidget {
  const ShoppingScreen1({super.key});

  @override
  State<ShoppingScreen1> createState() => _ShoppingScreen1State();
}

class _ShoppingScreen1State extends State<ShoppingScreen1> {
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
                    children: [
                      Text("Discover something new",style: TextStyle(color: Colors.black54,fontSize: 24,fontWeight: FontWeight.bold),),
                      Text("Special new arrivale just for you",style: TextStyle(color: Colors.black54,fontSize: 15,fontWeight: FontWeight.bold),),
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
            SizedBox(
              height: 368,
              width: 261,
              child:
              Card(

                child: Image.asset("assets/images/view_page_1_image.jpg",fit: BoxFit.cover),),
            ),
          ),
        ],
      )
     ,
    );
  }
}
