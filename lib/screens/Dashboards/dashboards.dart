import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_ui/data/img.dart';
import 'package:flutter_ui/widget/my_text.dart';

class Dashboards extends StatefulWidget {
  const Dashboards({Key? key}) : super(key: key);

  @override
  State<Dashboards> createState() => _DashboardsState();
}

class _DashboardsState extends State<Dashboards> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: new AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.black,
          statusBarIconBrightness: Brightness.dark,
        ),
        title: new Text("Basic Card", style: TextStyle(color: Colors.white)),
        actions: [
          IconButton(
            icon: const Icon(Icons.close),
            onPressed: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
      body: Container(
        color: Colors.grey[100],
        height: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Stack(
                children: [
                  Container(
                    color: Colors.blue,
                    width: double.infinity,
                    height: 140,
                    child: Image.asset(
                      Img.get('world_map.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        height: 15,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 10,
                            ),
                            Text('Hi Cloudio Rembo, ',
                                style: MyText.title(context)!
                                    .copyWith(color: Colors.white)),
                            Container(
                              height: 5,
                            ),
                            Text('Welcome back',
                                style: MyText.medium(context)!
                                    .copyWith(color: Colors.white)),
                          ],
                        ),
                      ),
                      Spacer(),
                      IconButton(
                        icon: const Icon(
                          Icons.more_vert,
                          color: Colors.white,
                        ),
                        onPressed: () {},
                      )
                    ],
                  )
                ],
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 15,
                ),
                transform: Matrix4.translationValues(0.0, -35.0, 0.0),
                child: Column(
                  children: [
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4.0),
                      ),
                      color: Colors.white,
                      elevation: 2,
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: Container(
                        height: 60,
                        alignment: Alignment.centerLeft,
                        padding: EdgeInsets.symmetric(
                          horizontal: 5,
                        ),
                        child: Row(
                          children: [
                            IconButton(
                              icon: const Icon(
                                Icons.search,
                                color: Colors.grey,
                              ),
                              onPressed: () {},
                            ),
                            Expanded(
                              child: Text(
                                'Search',
                                style: MyText.medium(context)!
                                    .copyWith(color: Colors.grey),
                              ),
                            ),
                            IconButton(
                              icon: const Icon(
                                Icons.mic,
                                color: Colors.grey,
                              ),
                              onPressed: () {},
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 20,
                    ),
                    Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4.0),
                      ),
                      color: Colors.white,
                      elevation: 2,
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      child: Container(
                        height: 350,
                        alignment: Alignment.centerLeft,
                        padding: EdgeInsets.symmetric(
                          vertical: 20,
                          horizontal: 7,
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Column(
                                  children: [
                                    FloatingActionButton(
                                      heroTag: "fab1",
                                      elevation: 2,
                                      mini: true,
                                      backgroundColor: Colors.red[500],
                                      onPressed: () {},
                                      child: Icon(Icons.favorite),
                                    ),
                                    Container(
                                      height: 5,
                                    ),
                                    Text(
                                      'Likes',
                                      style: MyText.medium(context)!
                                          .copyWith(color: Colors.grey),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    FloatingActionButton(
                                      heroTag: "fab2",
                                      elevation: 2,
                                      mini: true,
                                      backgroundColor: Colors.yellow[500],
                                      onPressed: () {},
                                      child: Icon(Icons.people),
                                    ),
                                    Container(
                                      height: 5,
                                    ),
                                    Text(
                                      'Groups',
                                      style: MyText.medium(context)!
                                          .copyWith(color: Colors.grey),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    FloatingActionButton(
                                      heroTag: "fab3",
                                      elevation: 2,
                                      mini: true,
                                      backgroundColor: Colors.purple[500],
                                      onPressed: () {},
                                      child: Icon(Icons.location_on),
                                    ),
                                    Container(
                                      height: 5,
                                    ),
                                    Text(
                                      'Near By',
                                      style: MyText.medium(context)!
                                          .copyWith(color: Colors.grey),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Container(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Column(
                                  children: [
                                    FloatingActionButton(
                                      heroTag: "fab1",
                                      elevation: 2,
                                      mini: true,
                                      backgroundColor: Colors.lightGreen[500],
                                      onPressed: () {},
                                      child: Icon(Icons.person),
                                    ),
                                    Container(
                                      height: 5,
                                    ),
                                    Text(
                                      'Friends',
                                      style: MyText.medium(context)!
                                          .copyWith(color: Colors.grey),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    FloatingActionButton(
                                      heroTag: "fab5",
                                      elevation: 2,
                                      mini: true,
                                      backgroundColor: Colors.pink[500],
                                      onPressed: () {},
                                      child: Icon(Icons.star),
                                    ),
                                    Container(
                                      height: 5,
                                    ),
                                    Text(
                                      'Favourite',
                                      style: MyText.medium(context)!
                                          .copyWith(color: Colors.grey),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    FloatingActionButton(
                                      heroTag: "fab6",
                                      elevation: 2,
                                      mini: true,
                                      backgroundColor: Colors.orange[500],
                                      onPressed: () {},
                                      child: Icon(Icons.message),
                                    ),
                                    Container(
                                      height: 5,
                                    ),
                                    Text(
                                      'Reviews',
                                      style: MyText.medium(context)!
                                          .copyWith(color: Colors.grey),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Container(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Column(
                                  children: [
                                    FloatingActionButton(
                                      heroTag: "fab10",
                                      elevation: 2,
                                      mini: true,
                                      backgroundColor: Colors.green[500],
                                      onPressed: () {},
                                      child: Icon(Icons.browse_gallery),
                                    ),
                                    Container(
                                      height: 5,
                                    ),
                                    Text(
                                      'Albums',
                                      style: MyText.medium(context)!
                                          .copyWith(color: Colors.grey),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    FloatingActionButton(
                                      heroTag: "fab11",
                                      elevation: 2,
                                      mini: true,
                                      backgroundColor: Colors.brown[500],
                                      onPressed: () {},
                                      child: Icon(Icons.payment),
                                    ),
                                    Container(
                                      height: 5,
                                    ),
                                    Text(
                                      'Payment',
                                      style: MyText.medium(context)!
                                          .copyWith(color: Colors.grey),
                                    ),
                                  ],
                                ),
                                Column(
                                  children: [
                                    FloatingActionButton(
                                      heroTag: "fab12",
                                      elevation: 2,
                                      mini: true,
                                      backgroundColor: Colors.blue[500],
                                      onPressed: () {},
                                      child: Icon(Icons.play_arrow),
                                    ),
                                    Container(
                                      height: 5,
                                    ),
                                    Text(
                                      'Sports',
                                      style: MyText.medium(context)!
                                          .copyWith(color: Colors.grey),
                                    ),
                                  ],
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
