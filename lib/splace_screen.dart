import 'package:flutter/material.dart';
import 'package:fluxstor_figma_design/page_view_ui/page_view_builder.dart';

class SplaceScreen extends StatefulWidget {
  const SplaceScreen({super.key});

  @override
  State<SplaceScreen> createState() => _SplaceScreenState();
}

class _SplaceScreenState extends State<SplaceScreen> {

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2),() {
      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=>PageViewBuilder()), (route) => false,);
    },);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DecoratedBox(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                  "assets/images/WhatsApp Image 2024-10-09 at 11.18.29_15a97dd2.jpg"),
              fit: BoxFit.cover),
        ),
        child: Center(
          child:
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 290),
                    child: Text("Welcome To GemsStore!", style: TextStyle(
                        fontSize: 21,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),),
                  ),
                ],
              ),
               const Column(
                children: [
                  Text("The Home for a Fanstata",
                    style: TextStyle(color: Colors.white, fontSize: 16),)
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 180,
                height: 45,
                child:
                ElevatedButton(
                 style: ElevatedButton.styleFrom(side: const BorderSide(color: Colors.white,width: 2.0),backgroundColor: Colors.black54),
                  onPressed: () {

                  }, child: const Text("Get Started",
                  style:
                  TextStyle(color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,),
                ),
                ),
              )
            ],
          )
          ,
        ),
      ),
    );
  }
}
