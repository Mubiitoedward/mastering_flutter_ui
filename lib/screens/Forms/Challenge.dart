import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

class Challenge extends StatefulWidget {
  const Challenge();

  @override
  State<Challenge> createState() => _ChallengeState();
}

class _ChallengeState extends State<Challenge>
    with SingleTickerProviderStateMixin {
  TextStyle textStyle =
      TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold);
  TextStyle labelstyle = TextStyle(color: Colors.white);
  UnderlineInputBorder lineStyle1 = UnderlineInputBorder(
      borderSide: BorderSide(color: Colors.white, width: 2));
  UnderlineInputBorder lineStyle2 = UnderlineInputBorder(
      borderSide: BorderSide(color: Colors.white, width: 2));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 53, 52, 52),
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Color.fromARGB(255, 222, 180, 11),
          statusBarIconBrightness: Brightness.dark,
        ),
        backgroundColor: Color.fromARGB(255, 222, 180, 11),
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
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            TextField(
              style: textStyle,
              keyboardType: TextInputType.text,
              cursorColor: Colors.white,
              decoration: InputDecoration(
                icon: Container(
                  margin: EdgeInsets.only(right: 10),
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                ),
                labelText: "Name",
                labelStyle: labelstyle,
                enabledBorder: lineStyle1,
                focusedBorder: lineStyle2,
              ),
            ),
            Container(height: 10),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: TextField(
                keyboardType: TextInputType.multiline,
                maxLines:
                    5, // Set the number of lines you want to display initially
                decoration: InputDecoration(
                  labelText: "Message",
                  labelStyle: labelstyle,

                  border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white)),
                  // Border style, you can customize it
                ),
              ),
            ),
            Container(height: 10),
            TextField(
              style: textStyle,
              keyboardType: TextInputType.text,
              cursorColor: Colors.white,
              decoration: InputDecoration(
                icon: Container(
                  margin: EdgeInsets.only(right: 10),
                  child: Icon(
                    Icons.email,
                    color: Colors.white,
                  ),
                ),
                labelText: "Email",
                labelStyle: labelstyle,
                enabledBorder: lineStyle1,
                focusedBorder: lineStyle2,
              ),
            ),
            Container(height: 10),
            TextField(
              style: textStyle,
              keyboardType: TextInputType.text,
              cursorColor: Colors.white,
              decoration: InputDecoration(
                icon: Container(
                  margin: EdgeInsets.only(right: 10),
                  child: Icon(
                    Icons.phone,
                    color: Colors.white,
                  ),
                ),
                labelText: "Phone",
                labelStyle: labelstyle,
                enabledBorder: lineStyle1,
                focusedBorder: lineStyle2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
