import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SplashTwitter extends StatelessWidget {
  const SplashTwitter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1DA1F2),
      appBar: AppBar(
        backgroundColor: Color(0xff1DA1F2),
        elevation: 0,
        toolbarHeight: 0,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Color(0xff1DA1F2),
          statusBarIconBrightness: Brightness.light,
        ),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        alignment: Alignment.center,
        child: Stack(children: [
          Container(
            child: Image.asset(
              'assets/images/ic_social_twitter.png',
              color: Colors.white,
              width: 70,
              height: 70,
            ),
            alignment: Alignment.center,
          ),
        ]),
      ),
    );
  }
}
