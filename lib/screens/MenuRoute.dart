import 'package:flutter/material.dart';
import 'package:flutter_ui/BottomNavigation/BasicBottomNavigation.dart';
import 'package:flutter_ui/Menus/DrawerDarkScreen.dart';
import 'package:flutter_ui/Menus/DrawerMail.dart';
import 'package:flutter_ui/Menus/DrawerNewsMenu.dart';
import 'package:flutter_ui/data/DrawerAgriMenu.dart';
import 'package:flutter_ui/screens/Dashboards/WaletDashboard.dart';
import 'package:flutter_ui/screens/Dashboards/dashboards.dart';
import 'package:flutter_ui/screens/FacebookSplashScreen.dart';
import 'package:flutter_ui/screens/Forms/Challenge.dart';
import 'package:flutter_ui/screens/Forms/Form_style.dart';
import 'package:flutter_ui/screens/Forms/FormsPage.dart';
import 'package:flutter_ui/screens/Forms/SignUpForm.dart';
import 'package:flutter_ui/screens/Profiles/Polygons.dart';
import 'package:flutter_ui/screens/Profiles/Simple_profile.dart';
import 'package:flutter_ui/screens/Shopping/ItemPage.dart';
import 'package:flutter_ui/screens/Shopping/ShoppingCategory.dart';
import 'package:flutter_ui/screens/SplashScreens/Cards/BasicCards.dart';
import 'package:flutter_ui/screens/SplashScreens/SplashTwitter.dart';
import 'package:flutter_ui/screens/verrification/OTP.dart';
import 'package:flutter_ui/screens/verrification/verification_blue.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

import 'SplashScreens/SplashInstagram.dart';
import 'SplashScreens/TikTokScreen.dart';

class MenuRoute extends StatelessWidget {
  const MenuRoute();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FLUTTER UI COURSE"),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.water_drop),
            title: Text("Splash Screen"),
          ),
          ListTile(
            trailing: Icon(Icons.keyboard_arrow_right),
            title: Text("Instagram"),
            onTap: () {
              Get.to(() => SplashInstagram());
            },
          ),
          ListTile(
            trailing: Icon(Icons.keyboard_arrow_right),
            title: Text("TikTok"),
            onTap: () {
              Get.to(() => TikTokScreen());
            },
          ),
          ListTile(
            trailing: Icon(Icons.keyboard_arrow_right),
            title: Text("Twitter"),
            onTap: () {
              Get.to(() => SplashTwitter());
            },
          ),
          ListTile(
            trailing: Icon(Icons.keyboard_arrow_right),
            title: Text("Fcebook"),
            onTap: () {
              Get.to(() => FacebookSplashScreen());
            },
          ),
          ListTile(
            leading: Icon(Icons.water_drop),
            title: Text("BottomNavigation"),
          ),
          ListTile(
            trailing: Icon(Icons.keyboard_arrow_right),
            title: Text("BasicBottomNavigation"),
            onTap: () {
              Get.to(() => BasicBottomNavigation());
            },
          ),
          ListTile(
            leading: Icon(
              Icons.window,
            ),
            title: Text("Menus"),
          ),
          ListTile(
            trailing: Icon(Icons.keyboard_arrow_right),
            title: Text("DrawerNewsMenu"),
            onTap: () {
              Get.to(() => DrawerNewsMenu());
            },
          ),
          ListTile(
            trailing: Icon(Icons.keyboard_arrow_right),
            title: Text("DrawerMail"),
            onTap: () {
              Get.to(() => DrawerMail());
            },
          ),
          ListTile(
            trailing: Icon(Icons.keyboard_arrow_right),
            title: Text("DarkDrawer"),
            onTap: () {
              Get.to(() => DrawerDarkScreen());
            },
          ),
          ListTile(
            trailing: Icon(Icons.keyboard_arrow_right),
            title: Text("AgriMenu"),
            onTap: () {
              Get.to(() => DrawerAgriMenu());
            },
          ),
          ListTile(
            leading: Icon(
              Icons.add_box_outlined,
            ),
            title: Text("cards"),
          ),
          ListTile(
            trailing: Icon(Icons.keyboard_arrow_right),
            title: Text("Basic Card"),
            onTap: () {
              Get.to(() => BasicCards());
            },
          ),
          ListTile(
            leading: Icon(
              Icons.format_shapes_outlined,
            ),
            title: Text("Forms"),
          ),
          ListTile(
            trailing: Icon(Icons.keyboard_arrow_right),
            title: Text("Login Form"),
            onTap: () {
              Get.to(() => FormsPages());
            },
          ),
          ListTile(
            trailing: Icon(Icons.keyboard_arrow_right),
            title: Text("SignUp Form"),
            onTap: () {
              Get.to(() => SignPForm());
            },
          ),
          ListTile(
            trailing: Icon(Icons.keyboard_arrow_right),
            title: Text("Form Style"),
            onTap: () {
              Get.to(() => FormWithIconRoute());
            },
          ),
          ListTile(
            trailing: Icon(Icons.keyboard_arrow_right),
            title: Text("Challenge"),
            onTap: () {
              Get.to(() => Challenge());
            },
          ),
          ListTile(
            leading: Icon(
              Icons.format_shapes_outlined,
            ),
            title: Text("Profiles"),
          ),
          ListTile(
            trailing: Icon(Icons.keyboard_arrow_right),
            title: Text("Polygons"),
            onTap: () {
              Get.to(() => Polygons());
            },
          ),
          ListTile(
            trailing: Icon(Icons.keyboard_arrow_right),
            title: Text("Simple Profiles"),
            onTap: () {
              Get.to(() => SimpleProfiles());
            },
          ),
          ListTile(
            leading: Icon(
              Icons.shopping_cart,
            ),
            title: Text("Shopping"),
          ),
          ListTile(
            trailing: Icon(Icons.keyboard_arrow_right),
            title: Text("Shopping Cart"),
            onTap: () {
              Get.to(() => ShoppingCartScreen());
            },
          ),
          ListTile(
            trailing: Icon(Icons.keyboard_arrow_right),
            title: Text("Item Page"),
            onTap: () {
              Get.to(() => ItemPage());
            },
          ),
          ListTile(
            leading: Icon(
              Icons.verified_rounded,
            ),
            title: Text("Verifications"),
          ),
          ListTile(
            trailing: Icon(Icons.keyboard_arrow_right),
            title: Text("Verrifications bulue"),
            onTap: () {
              Get.to(() => VerificationBlue());
            },
          ),
          ListTile(
            trailing: Icon(Icons.keyboard_arrow_right),
            title: Text("OTP"),
            onTap: () {
              Get.to(() => OTP());
            },
          ),
          ListTile(
            leading: Icon(
              Icons.dashboard,
            ),
            title: Text("Dashboard"),
          ),
          ListTile(
            trailing: Icon(Icons.keyboard_arrow_right),
            title: Text("Dashboard"),
            onTap: () {
              Get.to(() => Dashboards());
            },
          ),
          ListTile(
            trailing: Icon(Icons.keyboard_arrow_right),
            title: Text("Walet Dashboard"),
            onTap: () {
              Get.to(() => WaletDashboard());
            },
          ),
        ],
      ),
    );
  }
}
