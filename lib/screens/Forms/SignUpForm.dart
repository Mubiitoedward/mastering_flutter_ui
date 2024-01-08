//import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_ui/data/my_colors.dart';
import 'package:flutter_ui/widget/my_text.dart';

class SignPForm extends StatefulWidget {
  const SignPForm({Key? key}) : super(key: key);

  @override
  State<SignPForm> createState() => _SignPFormState();
}

class _SignPFormState extends State<SignPForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.primaryDark,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: MyColors.primaryDark,
          statusBarIconBrightness: Brightness.dark,
        ),
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Container(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 20,
                ),
                TextField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    labelText: "Full Name",
                    hintText: "Full Name",
                  ),
                ),
                Container(
                  height: 20,
                ),
                TextField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    labelText: "User Name",
                    hintText: "User Name",
                  ),
                ),
                Container(
                  height: 20,
                ),
                TextField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: " Email",
                    hintText: "Email",
                  ),
                ),
                Container(
                  height: 20,
                ),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: "Password(Optional)",
                    hintText: "Enter your password",
                  ),
                ),
                Container(
                  height: 20,
                ),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: "Re-Type Password",
                    hintText: "Re-enter your password",
                  ),
                ),
                Container(
                  height: 5,
                ),
                Container(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "SignUp",
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: MyColors.accent,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(10),
                      ),
                    ),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
