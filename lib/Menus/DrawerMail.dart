import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_ui/data/img.dart';
import 'package:flutter_ui/data/my_colors.dart';

class DrawerMail extends StatefulWidget {
  const DrawerMail({Key? key}) : super(key: key);

  @override
  State<DrawerMail> createState() => _DrawerMailState();
}

class _DrawerMailState extends State<DrawerMail> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      key: scaffoldKey,
      appBar: new AppBar(
        backgroundColor: Colors.pink[600],
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.pink[600],
          statusBarIconBrightness: Brightness.dark,
        ),
        title: new Text("Drawer Mail", style: TextStyle(color: Colors.white)),
        leading: IconButton(
          icon: Icon(Icons.menu, color: Colors.white),
          onPressed: () {
            scaffoldKey.currentState!.openDrawer();
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.close),
            onPressed: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
      drawer: Drawer(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 190,
                child: Stack(
                  children: [
                    Image.asset(
                      Img.get('material_bg_2.png'),
                      width: double.infinity,
                      height: double.infinity,
                      fit: BoxFit.cover,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 40,
                        horizontal: 14,
                      ),
                      child: CircleAvatar(
                        radius: 36,
                        child: CircleAvatar(
                          backgroundColor: Colors.grey[100],
                          radius: 33,
                          backgroundImage:
                              AssetImage(Img.get('photo_male_6.jpg')),
                        ),
                      ),
                    ),
                    Align(
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 10,
                          horizontal: 14,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              "Mubiito Robert",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              "ed@gmail.com",
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                      alignment: Alignment.bottomLeft,
                    ),
                  ],
                ),
              ),
              Container(
                height: 10,
              ),
              ListTile(
                leading: Icon(Icons.mail_outline),
                title: Text("Inbox",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    )),
                trailing: Chip(
                  label: Text(
                    "90",
                    style: TextStyle(color: Colors.white),
                  ),
                  backgroundColor: Colors.blue[400],
                ),
              ),
              Container(
                height: 10,
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.send),
                title: Text("Sent",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    )),
                trailing: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 3),
                  color: MyColors.primaryDark,
                  child: Text(
                    '20',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 12),
                  ),
                ),
              ),
              Container(
                height: 10,
              ),
              ListTile(
                leading: Icon(Icons.drafts),
                title: Text("Drafts",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    )),
                trailing: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 3),
                  color: Colors.greenAccent[400],
                  child: Text(
                    '10 New',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 12),
                  ),
                ),
              ),
              Container(
                height: 10,
              ),
              ListTile(
                leading: Icon(Icons.star_border),
                title: Text("Starred",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    )),
                trailing: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 3),
                  color: Colors.amber,
                  child: Text(
                    '5',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 12),
                  ),
                ),
              ),
              Container(
                height: 10,
              ),
              ListTile(
                leading: Icon(Icons.send),
                title: Text("Spam",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    )),
                trailing: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 3),
                  color: Colors.red,
                  child: Text(
                    '99+',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 12),
                  ),
                ),
              ),
              Container(
                height: 10,
              ),
              ListTile(
                leading: Icon(Icons.delete_outline),
                title: Text("Trash",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    )),
                trailing: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 3),
                  color: Colors.red,
                  child: Text(
                    '99+',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 12),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
