import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_ui/data/img.dart';
import 'package:flutter_ui/widget/my_text.dart';

class FacebookSplashScreen extends StatelessWidget {
  const FacebookSplashScreen({Key? key}) : super(key: key);

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
          title: Text('Splash Facebook'),
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.white,
          alignment: Alignment.center,
          child: Stack(children: [
            Container(
              child: Image.asset(
                Img.get('ic_social_facebook_circle.png'),
                color: Color(0xff3b5998),
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
                    "F A C E B O O K",
                    style: MyText.body1(context)!.copyWith(
                      color: Colors.grey[400],
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    height: 5,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.account_circle_outlined,
                          color: Colors.grey[500], size: 19),
                      Container(width: 13),
                      Icon(Icons.email_outlined,
                          color: Colors.grey[500], size: 20),
                      Container(width: 13),
                      Icon(Icons.store_outlined,
                          color: Colors.grey[500], size: 20),
                      Container(width: 13),
                      Icon(Icons.visibility_outlined,
                          color: Colors.grey[500], size: 20),
                    ],
                  )
                ],
              ),
              alignment: Alignment.bottomCenter,
            )
          ]),
        ));
  }
}
