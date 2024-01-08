import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_ui/data/img.dart';
import 'package:flutter_ui/widget/my_text.dart';

class DrawerAgriMenu extends StatefulWidget {
  const DrawerAgriMenu({Key? key}) : super(key: key);

  @override
  State<DrawerAgriMenu> createState() => _DrawerAgriMenuState();
}

class _DrawerAgriMenuState extends State<DrawerAgriMenu> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      key: scaffoldKey,
      appBar: new AppBar(
        backgroundColor: Colors.green,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.green,
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
        child: Stack(
          children: [
            Image.asset(
              Img.get(
                'image_31.jpg',
              ),
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
            ),
            Container(
              width: double.infinity,
              height: double.infinity,
              color: Colors.black.withOpacity(0.5),
            ),
            Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 40,
                ),
                Row(
                  children: [
                    Container(
                      width: 10,
                    ),
                    IconButton(
                      icon: Icon(Icons.close, color: Colors.white),
                      onPressed: () => Navigator.pop(context),
                    ),
                    Spacer(),
                  ],
                ),
                Container(
                  height: 30,
                ),
                Image.asset(
                  Img.get('logo_small_round.png'),
                  width: 70,
                  height: 70,
                  fit: BoxFit.cover,
                  color: Colors.white,
                ),
                Container(
                  height: 10,
                ),
                Text(
                  "MrtX",
                  style: MyText.headline(context)!.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  height: 40,
                ),
                Divider(
                  color: Colors.white,
                  height: 1,
                ),
                ListTile(
                  leading: Icon(Icons.mail_outline, color: Colors.white),
                  title: Text("Inbox",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      )),
                  trailing: Text(
                    "90",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Container(
                  height: 10,
                ),
                ListTile(
                  leading: Icon(Icons.send, color: Colors.white),
                  title: Text("Sent",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      )),
                  trailing: Container(
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
                  leading: Icon(Icons.drafts, color: Colors.white),
                  title: Text("Drafts",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      )),
                  trailing: Container(
                    child: Text(
                      '10',
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
                  leading: Icon(Icons.star_border, color: Colors.white),
                  title: Text("Starred",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      )),
                  trailing: Container(
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
                Divider(
                  color: Colors.white,
                  height: 1,
                ),
                Spacer(),
                ListTile(
                  leading: Icon(Icons.logout_sharp, color: Colors.white),
                  title: Text("LogOut",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      )),
                  trailing: Container(
                    child: Icon(Icons.arrow_forward_ios,
                        color: Colors.white, size: 15),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
