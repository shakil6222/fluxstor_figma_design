import 'package:flutter/material.dart';

class UpdatingUi extends StatefulWidget {
  const UpdatingUi({super.key});

  @override
  State<UpdatingUi> createState() => _UpdatingUiState();
}

class _UpdatingUiState extends State<UpdatingUi> {
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
                        Text("Update trendy outfit",style: TextStyle(color: Colors.black54,fontSize: 24,fontWeight: FontWeight.bold),),
                        Text("favorite brands and hostest trends",style: TextStyle(color: Colors.black54,fontSize: 15,fontWeight: FontWeight.bold),),
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
              child: Container(
                height: 368,
                width: 261,
                child:
                Card(
                  child: Image.asset("assets/images/new_image.jpg",fit: BoxFit.cover),),
              ),
            ),
            // Padding(padding: const EdgeInsets.only(top: 680,left: 90,
            // ),
            //   child:
            //   SizedBox(
            //     width: 200,
            //     height: 50,
            //     child:
            //     ElevatedButton(
            //       style: ElevatedButton.styleFrom(side: BorderSide(color: Colors.white,width: 2.0),backgroundColor: Colors.black54),
            //       onPressed: () {
            //
            //       }, child: const Text("Shopping now",
            //       style:
            //       TextStyle(color: Colors.white,
            //         fontSize: 18,
            //         fontWeight: FontWeight.bold,),
            //     ),
            //     ),
            //   ),
            // )
          ],
        )
    );
  }
}
