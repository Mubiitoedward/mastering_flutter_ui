import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_ui/data/img.dart';
import 'package:flutter_ui/data/my_strings.dart';
import 'package:flutter_ui/model/news.dart';
import 'package:flutter_ui/widget/my_text.dart';

class SimpleProfiles extends StatefulWidget {
  const SimpleProfiles({Key? key}) : super(key: key);

  @override
  State<SimpleProfiles> createState() => _SimpleProfilesState();
}

class _SimpleProfilesState extends State<SimpleProfiles> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.purple[700],
          statusBarIconBrightness: Brightness.dark,
        ),
        title: Text("Simple Profile"),
        backgroundColor: Colors.purple[600],
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () => Navigator.of(context).pop(),
        ),
        iconTheme: IconThemeData(color: Colors.white),
        actions: [
          PopupMenuButton(
              itemBuilder: (context) => [
                    PopupMenuItem(
                      value: 'One',
                      child: Text("Menu 1"),
                    ),
                    PopupMenuItem(
                      value: 'Two',
                      child: Text("Menu 2"),
                    ),
                    PopupMenuItem(
                      value: 'Three',
                      child: Text("Menu 3"),
                    ),
                  ])
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Container(
                height: 35,
              ),
              Text('Lord Voldemort',
                  style: MyText.headline(context)!.copyWith(
                      color: Colors.black, fontWeight: FontWeight.bold)),
              Container(
                height: 5,
              ),
              Text('Dark Lord',
                  style: MyText.subhead(context)!.copyWith(
                      color: Colors.grey[700], fontWeight: FontWeight.bold)),
              Container(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    child: Container(
                      width: 100,
                      height: 100,
                      child: Icon(
                        Icons.chat,
                        color: Colors.lightGreen[600],
                      ),
                    ),
                    onTap: () => print("Chat"),
                  ),
                  Container(
                    width: 10,
                  ),
                  CircleAvatar(
                    radius: 52,
                    backgroundColor: Colors.purple[600],
                    child: CircleAvatar(
                      radius: 50,
                      backgroundImage:
                          AssetImage(Img.get('photo_female_5.jpg')),
                    ),
                  ),
                  Container(
                    width: 10,
                  ),
                  InkWell(
                    child: Container(
                      width: 100,
                      height: 100,
                      child: Icon(
                        Icons.call,
                        color: Colors.lightGreen[600],
                      ),
                    ),
                    onTap: () => print("call"),
                  ),
                ],
              ),
              Divider(
                height: 50,
                thickness: 2,
                indent: 20,
                endIndent: 20,
              ),
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Column(
                      children: [
                        Text('1.5k',
                            style: MyText.title(context)!.copyWith(
                                color: Colors.purple[700],
                                fontWeight: FontWeight.bold)),
                        Container(
                          height: 5,
                        ),
                        Text('Posts',
                            style: MyText.body1(context)!.copyWith(
                                color: Colors.grey[700],
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Column(
                      children: [
                        Text('4.5k',
                            style: MyText.title(context)!.copyWith(
                                color: Colors.purple[700],
                                fontWeight: FontWeight.bold)),
                        Container(
                          height: 5,
                        ),
                        Text('Followers',
                            style: MyText.body1(context)!.copyWith(
                                color: Colors.grey[700],
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Column(
                      children: [
                        Text('1.5k',
                            style: MyText.title(context)!.copyWith(
                                color: Colors.purple[700],
                                fontWeight: FontWeight.bold)),
                        Container(
                          height: 5,
                        ),
                        Text('Following',
                            style: MyText.body1(context)!.copyWith(
                                color: Colors.grey[700],
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                ],
              ),
              Divider(
                height: 50,
                indent: 20,
                endIndent: 20,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Text(MyStrings.middle_lorem_ipsum,
                    textAlign: TextAlign.center,
                    style: MyText.body1(context)!.copyWith(
                        color: Colors.grey[700], fontWeight: FontWeight.bold)),
              ),
              Divider(
                height: 50,
              ),
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Column(
                      children: [
                        Text('Email',
                            style: MyText.title(context)!.copyWith(
                                color: Colors.purple[700],
                                fontWeight: FontWeight.bold)),
                        Container(
                          height: 5,
                        ),
                        Text('Email@me.com',
                            style: MyText.body1(context)!.copyWith(
                                color: Colors.grey[700],
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Column(
                      children: [
                        Text('Website',
                            style: MyText.title(context)!.copyWith(
                                color: Colors.purple[700],
                                fontWeight: FontWeight.bold)),
                        Container(
                          height: 5,
                        ),
                        Text('web..me',
                            style: MyText.body1(context)!.copyWith(
                                color: Colors.grey[700],
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                height: 25,
              ),
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Column(
                      children: [
                        Text('Address',
                            style: MyText.title(context)!.copyWith(
                                color: Colors.purple[700],
                                fontWeight: FontWeight.bold)),
                        Container(
                          height: 5,
                        ),
                        Text('Muyenga',
                            style: MyText.body1(context)!.copyWith(
                                color: Colors.grey[700],
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Column(
                      children: [
                        Text('Location',
                            style: MyText.title(context)!.copyWith(
                                color: Colors.purple[700],
                                fontWeight: FontWeight.bold)),
                        Container(
                          height: 5,
                        ),
                        Text('Kampala',
                            style: MyText.body1(context)!.copyWith(
                                color: Colors.grey[700],
                                fontWeight: FontWeight.bold)),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
