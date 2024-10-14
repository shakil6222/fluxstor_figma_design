import 'package:flutter/material.dart';
import 'package:fluxstor_figma_design/login_sign_up_screens/forgot_password.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: 
        SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 200,
              width: 400,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 30, top: 120,right: 20),
                    child: Text(
                      'Forgot password',
                      style: TextStyle(
                          color: Colors.black45,
                          fontSize: 21,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 30, top: 10),
                    child: Text(
                      "Enter email associated with your account\n "
                          "and we'll send and email with  to "
                          "resetyour password ",
                      style: TextStyle(
                          color: Colors.black45,
                          fontSize: 12,
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            ),
            Column(
              children: [
                 Padding(
                  padding: EdgeInsets.only(left: 20, top: 55, right: 20),
                  child: TextField(
                    decoration: InputDecoration(labelText: 'Email address'),
                    keyboardType: TextInputType.emailAddress,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    ));
  }
}
