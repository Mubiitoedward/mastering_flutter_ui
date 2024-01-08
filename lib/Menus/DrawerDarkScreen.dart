import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_ui/data/my_colors.dart';

class DrawerDarkScreen extends StatefulWidget {
  const DrawerDarkScreen({Key? key}) : super(key: key);

  @override
  State<DrawerDarkScreen> createState() => _DrawerDarkScreenState();
}

class _DrawerDarkScreenState extends State<DrawerDarkScreen> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      key: scaffoldKey,
      appBar: new AppBar(
        backgroundColor: Colors.black,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Colors.black,
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
        width: 200,
        backgroundColor: Colors.grey[900],
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 50,
              ),
              ListTile(
                leading: Icon(Icons.mail_outline, color: Colors.white),
                title: Text("Inbox",
                    style: TextStyle(
                      color: Colors.white,
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
              Divider(
                color: Colors.white,
              ),
              ListTile(
                leading: Icon(Icons.send, color: Colors.white),
                title: Text("Sent",
                    style: TextStyle(
                      color: Colors.white,
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
                leading: Icon(Icons.drafts, color: Colors.white),
                title: Text("Drafts",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    )),
                trailing: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 3),
                  color: Colors.greenAccent[400],
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
                leading: Icon(Icons.send, color: Colors.white),
                title: Text("Spam",
                    style: TextStyle(
                      color: Colors.white,
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
                leading: Icon(Icons.delete_outline, color: Colors.white),
                title: Text("Trash",
                    style: TextStyle(
                      color: Colors.white,
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
