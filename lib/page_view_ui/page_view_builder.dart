import 'package:flutter/material.dart';
import 'package:fluxstor_figma_design/login_sign_up_screens/sign_up_screen.dart';
import 'package:fluxstor_figma_design/page_view_ui/explor_style.dart';
import 'package:fluxstor_figma_design/page_view_ui/shopping_screen_1.dart';
import 'package:fluxstor_figma_design/page_view_ui/updating_ui.dart';

class PageViewBuilder extends StatefulWidget {
  const PageViewBuilder({super.key});

  @override
  State<PageViewBuilder> createState() => _PageViewBuilderState();
}

class _PageViewBuilderState extends State<PageViewBuilder> {
  final PageController _pageController = PageController();
  int currentPage = 0;
  final List<Widget> list = [
    const ShoppingScreen1(),
    const UpdatingUi(),
    const ExplorStyle(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Stack(
        children: [
          PageView.builder(
            controller: _pageController,
            itemCount: list.length,
            onPageChanged: (int page) {
              setState(() {
                currentPage = page;
              });
            },
            itemBuilder: (context, index) {
              return list[index];
            },
          ),
          Positioned(
            bottom: 20,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(list.length, (index) {
                return GestureDetector(
                  onTap: () {
                    _pageController.animateToPage(
                      index,
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeIn,
                    );
                  },
                  child:
                  Container(
                    margin:  EdgeInsets.symmetric(horizontal: 5,vertical: 125),
                    width: 8,
                    height: 8,
                    decoration: BoxDecoration(
                      color: currentPage == index ? Colors.white70 :
                      Colors.grey.shade800,
                      shape: BoxShape.circle,
                    ),
                  ),
                );
              },
              ),
            ),

          ),
          Padding(
            padding:
            const EdgeInsets.only(left: 80,top : 680,),
            child:
            SizedBox(
              width: 200,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(side: const BorderSide(color: Colors.white,width: 2.0),backgroundColor: Colors.black54),
                onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUpScreen()));
                }, child:  const Text("Shopping now",
                style:
                TextStyle(color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,),
              ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

