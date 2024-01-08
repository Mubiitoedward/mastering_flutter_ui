import 'package:flutter/material.dart';
import 'package:flutter_ui/data/img.dart';
import 'package:flutter_ui/widget/my_text.dart';

class DrawerNewsMenu extends StatefulWidget {
  const DrawerNewsMenu({Key? key}) : super(key: key);

  @override
  State<DrawerNewsMenu> createState() => _DrawerNewsMenuState();
}

class _DrawerNewsMenuState extends State<DrawerNewsMenu> {
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: new AppBar(
        title: new Text("Drawer News Menu"),
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            scaffoldKey.currentState!.openDrawer();
          },
        ),
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
                      Img.get('material_bg_1.png'),
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
              ListTile(
                leading: Icon(Icons.home),
                title: Text(
                  "Home",
                  style: MyText.body1(context)!.copyWith(
                      color: Colors.black, fontWeight: FontWeight.w500),
                ),
              ),
              ListTile(
                leading: Icon(Icons.business),
                title: Text(
                  "Business",
                  style: MyText.body1(context)!.copyWith(
                      color: Colors.black, fontWeight: FontWeight.w500),
                ),
              ),
              ListTile(
                leading: Icon(Icons.shopping_cart),
                title: Text(
                  "Shop",
                  style: MyText.body1(context)!.copyWith(
                      color: Colors.black, fontWeight: FontWeight.w500),
                ),
              ),
              ListTile(
                leading: Icon(Icons.account_circle),
                title: Text(
                  "Profile",
                  style: MyText.body1(context)!.copyWith(
                      color: Colors.black, fontWeight: FontWeight.w500),
                ),
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text(
                  "Settings",
                  style: MyText.body1(context)!.copyWith(
                      color: Colors.black, fontWeight: FontWeight.w500),
                ),
              ),
              ListTile(
                leading: Icon(Icons.help),
                title: Text(
                  "help",
                  style: MyText.body1(context)!.copyWith(
                      color: Colors.black, fontWeight: FontWeight.w500),
                ),
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.logout),
                title: Text(
                  "Logout",
                  style: MyText.body1(context)!.copyWith(
                      color: Colors.black, fontWeight: FontWeight.w500),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
