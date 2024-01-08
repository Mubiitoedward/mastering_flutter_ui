import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_ui/data/img.dart';
import 'package:flutter_ui/widget/my_text.dart';

class TikTokScreen extends StatefulWidget {
  const TikTokScreen({Key? key}) : super(key: key);

  @override
  State<TikTokScreen> createState() => _TikTokScreenState();
}

class _TikTokScreenState extends State<TikTokScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        toolbarHeight: 0,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.black,
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
              Img.get('ic_social_tiktok.png'),
              color: Colors.white,
              width: 70,
              height: 70,
            ),
            alignment: Alignment.center,
          ),
          Container(
            height: 25,
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 30),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  height: 100,
                ),
                Text(
                  "Tik Tok",
                  style: MyText.headline(context)!.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            alignment: Alignment.center,
          )
        ]),
      ),
    );
  }
}
