import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_ui/data/my_colors.dart';
import 'package:flutter_ui/widget/my_text.dart';

class FormsPages extends StatefulWidget {
  const FormsPages({Key? key}) : super(key: key);

  @override
  State<FormsPages> createState() => _FormsPagesState();
}

class _FormsPagesState extends State<FormsPages> {
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
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(150),
          child: Container(
            padding: EdgeInsets.fromLTRB(60, 15, 0, 25),
            alignment: Alignment.bottomLeft,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Login",
                  style: MyText.headline(context)!.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  height: 10,
                ),
                Text(
                  "Please sign in to continue",
                  style: MyText.body1(context)!.copyWith(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
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
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: "Email",
                    hintText: "Enter your email",
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
                  height: 5,
                ),
                Row(children: [
                  Checkbox(
                    value: false,
                    onChanged: (value) {},
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  ),
                  Text(
                    "Remember me",
                    style: MyText.body1(context)!
                        .copyWith(color: Colors.grey[600]),
                  ),
                ]),
                Container(
                  height: 20,
                ),
                Container(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      "Login",
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
