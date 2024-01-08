import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_ui/data/img.dart';
import 'package:flutter_ui/data/my_colors.dart';
import 'package:flutter_ui/widget/my_text.dart';

class OTP extends StatefulWidget {
  const OTP({Key? key}) : super(key: key);

  @override
  State<OTP> createState() => _OTPState();
}

class _OTPState extends State<OTP> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.white,
          statusBarIconBrightness: Brightness.light,
        ),
        backgroundColor: Colors.black,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.of(context).pop(),
        ),
        iconTheme: IconThemeData(color: Colors.white),
        actions: [
          IconButton(
            icon: Icon(Icons.done),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.all(0.0),
        shrinkWrap: true,
        children: [
          Stack(
            children: [
              Align(
                alignment: Alignment.center,
                child: Container(
                  width: 200,
                  child: Column(
                    children: [
                      Container(
                        height: 50,
                      ),
                      Container(
                        child: Image.asset(
                          Img.get('img_code_verification.png'),
                          width: 220,
                          height: 220,
                        ),
                      ),
                      Container(
                        height: 15,
                      ),
                      Container(
                        width: 220,
                        child:
                            Text("OTP code has been sent to your phone number",
                                textAlign: TextAlign.center,
                                style: MyText.medium(context)!.copyWith(
                                  color: MyColors.grey_60,
                                )),
                      ),
                      Container(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Flexible(
                              child: TextField(
                            enabled: false,
                            keyboardType: TextInputType.text,
                            style: MyText.headline(context)!.copyWith(
                              color: MyColors.grey_90,
                            ),
                          )),
                          Container(
                            width: 15,
                          ),
                          Flexible(
                              child: TextField(
                            enabled: false,
                            keyboardType: TextInputType.text,
                            style: MyText.headline(context)!.copyWith(
                              color: MyColors.grey_90,
                            ),
                          )),
                          Container(
                            width: 15,
                          ),
                          Flexible(
                              child: TextField(
                            enabled: false,
                            keyboardType: TextInputType.text,
                            style: MyText.headline(context)!.copyWith(
                              color: MyColors.grey_90,
                            ),
                          )),
                          Container(
                            width: 15,
                          ),
                          Flexible(
                            child: TextField(
                              keyboardType: TextInputType.text,
                              style: MyText.headline(context)!.copyWith(
                                  color: MyColors.grey_90,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: 5,
                      ),
                      Container(
                        width: 200,
                        child: TextButton(
                          style:
                              TextButton.styleFrom(foregroundColor: Colors.red),
                          child: Text(
                            "VERIFY",
                            style: MyText.medium(context)!.copyWith(
                              color: Colors.red,
                            ),
                          ),
                          onPressed: () {},
                        ),
                      )
                    ],
                    mainAxisSize: MainAxisSize.min,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
