import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_ui/data/img.dart';
import 'package:flutter_ui/data/my_colors.dart';
import 'package:flutter_ui/widget/my_text.dart';

class VerificationBlue extends StatefulWidget {
  const VerificationBlue({Key? key}) : super(key: key);

  @override
  State<VerificationBlue> createState() => _VerificationBlueState();
}

class _VerificationBlueState extends State<VerificationBlue> {
  TextEditingController ctr2 = TextEditingController();
  TextEditingController ctr1 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    ctr1.text = "+61 ";
    ctr2.text = "780 947680";
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
                          Img.get('img_number_verification.png'),
                          width: 220,
                          height: 220,
                        ),
                      ),
                      Text(
                        "verify Number",
                        style: MyText.title(context)!.copyWith(
                          color: MyColors.grey_80,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Container(
                        height: 15,
                      ),
                      Container(
                        width: 220,
                        child: Text(
                            "Enter your mobile number to verify your account",
                            textAlign: TextAlign.center,
                            style: MyText.medium(context)!.copyWith(
                              color: MyColors.grey_60,
                            )),
                      ),
                      Container(
                        height: 15,
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
                            controller: ctr1,
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
                              controller: ctr2,
                            ),
                            flex: 4,
                          ),
                        ],
                      ),
                      Container(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text("CONTINUE"),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.red[400],
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                          ),
                        ),
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
                            "NO, OTHER TIME",
                            style: MyText.medium(context)!.copyWith(
                              color: MyColors.grey_60,
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
