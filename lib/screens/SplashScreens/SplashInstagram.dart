import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_ui/data/img.dart';
import 'package:flutter_ui/widget/my_text.dart';

class SplashInstagram extends StatefulWidget {
  const SplashInstagram({Key? key}) : super(key: key);

  @override
  State<SplashInstagram> createState() => _SplashInstagramState();
}

class _SplashInstagramState extends State<SplashInstagram> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          toolbarHeight: 0,
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarColor: Colors.white,
            statusBarIconBrightness: Brightness.dark,
          ),
          title: Text('Splash Instagram'),
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.white,
          alignment: Alignment.center,
          child: Stack(children: [
            Container(
              child: Image.asset(
                Img.get('ic_social_instagram.png'),
                color: Colors.red[400],
                width: 60,
                height: 60,
              ),
              alignment: Alignment.center,
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 30),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "from",
                    style: MyText.body2(context)!.copyWith(
                      color: Colors.grey,
                    ),
                  ),
                  Container(
                    height: 5,
                  ),
                  Text(
                    "F A C E B O O K",
                    style: MyText.body1(context)!.copyWith(
                      color: Colors.red[400],
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              alignment: Alignment.bottomCenter,
            )
          ]),
        ));
  }
}
