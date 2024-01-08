import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_ui/model/bottom_nav.dart';

class BasicBottomNavigation extends StatefulWidget {
  const BasicBottomNavigation({Key? key}) : super(key: key);

  @override
  State<BasicBottomNavigation> createState() => _BasicBottomNavigationState();
}

class _BasicBottomNavigationState extends State<BasicBottomNavigation>
    with TickerProviderStateMixin<BasicBottomNavigation> {
  final List<BottomNav> itemNav = [
    BottomNav('Home', Icons.store, null),
    BottomNav('Business', Icons.business, null),
    BottomNav('Shop', Icons.shopping_cart, null),
    BottomNav('Profile', Icons.account_circle, null),
  ];
  int currentIndex = 0;
  late BuildContext context;

  void onBackPress() {
    if (Navigator.of(context).canPop()) {
      Navigator.pop(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Colors.grey[400],
            systemOverlayStyle: SystemUiOverlayStyle(
              statusBarColor: Colors.white,
              statusBarIconBrightness: Brightness.dark,
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.red[700],
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.blueGrey,
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: itemNav
            .map(
              (e) => BottomNavigationBarItem(
                icon: Icon(e.icon),
                label: e.title,
              ),
            )
            .toList(),
      ),
    );
  }
}
