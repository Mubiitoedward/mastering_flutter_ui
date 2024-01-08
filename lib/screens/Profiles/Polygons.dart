import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_ui/data/img.dart';
import 'package:flutter_ui/data/my_strings.dart';
import 'package:flutter_ui/widget/my_text.dart';

class Polygons extends StatefulWidget {
  const Polygons({Key? key}) : super(key: key);

  @override
  State<Polygons> createState() => _PolygonsState();
}

class _PolygonsState extends State<Polygons> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, value) {
          return [
            SliverAppBar(
              expandedHeight: 200,
              systemOverlayStyle: SystemUiOverlayStyle(
                statusBarColor: Colors.blue,
                statusBarIconBrightness: Brightness.dark,
              ),
              pinned: true,
              floating: false,
              flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(
                  Img.get("bg_polygon.png"),
                  fit: BoxFit.cover,
                ),
              ),
              bottom: PreferredSize(
                preferredSize: Size.fromHeight(50),
                child: Container(
                  transform: Matrix4.translationValues(0, 50, 0),
                  child: CircleAvatar(
                      radius: 50,
                      backgroundColor: Colors.grey[200],
                      child: CircleAvatar(
                        radius: 45,
                        backgroundImage:
                            AssetImage(Img.get("photo_female_6.jpg")),
                      )),
                ),
              ),
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.search),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.more_vert),
                ),
              ],
            ),
          ];
        },
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Container(
                  height: 70,
                ),
                Text(
                  "Hope suubi",
                  style: MyText.headline(context)!.copyWith(
                      color: Colors.grey[900], fontWeight: FontWeight.bold),
                ),
                Container(
                  height: 15,
                ),
                Text(
                  MyStrings.medium_lorem_ipsum,
                  textAlign: TextAlign.center,
                  style: MyText.body1(context)!.copyWith(
                      color: Colors.grey[700], fontWeight: FontWeight.bold),
                ),
                Container(
                  height: 25,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    backgroundColor: Colors.blue,
                  ),
                  child: Text(
                    "Follow",
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () {},
                ),
                Container(
                  height: 35,
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "Followers",
                            style: MyText.body1(context)!.copyWith(
                                color: Colors.grey[700],
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "1.5M",
                            style: MyText.headline(context)!.copyWith(
                                color: Colors.grey[900],
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "Following",
                            style: MyText.body1(context)!.copyWith(
                                color: Colors.grey[700],
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "2.3M",
                            style: MyText.headline(context)!.copyWith(
                                color: Colors.grey[900],
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "Friends",
                            style: MyText.body1(context)!.copyWith(
                                color: Colors.grey[700],
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "1.1M",
                            style: MyText.headline(context)!.copyWith(
                                color: Colors.grey[900],
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 35,
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "Followers",
                            style: MyText.body1(context)!.copyWith(
                                color: Colors.grey[700],
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "1.5M",
                            style: MyText.headline(context)!.copyWith(
                                color: Colors.grey[900],
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "Following",
                            style: MyText.body1(context)!.copyWith(
                                color: Colors.grey[700],
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "2.3M",
                            style: MyText.headline(context)!.copyWith(
                                color: Colors.grey[900],
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "Friends",
                            style: MyText.body1(context)!.copyWith(
                                color: Colors.grey[700],
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "1.1M",
                            style: MyText.headline(context)!.copyWith(
                                color: Colors.grey[900],
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Divider(height: 70),
                Text(MyStrings.long_lorem_ipsum,
                    textAlign: TextAlign.justify,
                    style: MyText.body1(context)!.copyWith(
                        color: Colors.grey[700], fontWeight: FontWeight.bold)),
                Container(
                  height: 35,
                ),
                Text(MyStrings.long_lorem_ipsum_2,
                    textAlign: TextAlign.justify,
                    style: MyText.body1(context)!.copyWith(
                        color: Colors.grey[700], fontWeight: FontWeight.bold)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
