import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_ui/data/dummy.dart';
import 'package:flutter_ui/data/img.dart';
import 'package:flutter_ui/data/my_colors.dart';
import 'package:flutter_ui/model/shop_category.dart';
import 'package:flutter_ui/widget/my_text.dart';

class ShoppingCartScreen extends StatefulWidget {
  const ShoppingCartScreen({Key? key}) : super(key: key);

  @override
  State<ShoppingCartScreen> createState() => _ShoppingCartScreenState();
}

class _ShoppingCartScreenState extends State<ShoppingCartScreen> {
  @override
  Widget build(BuildContext context) {
    List<ShopCategory> listCategory = Dummy.getShoppingCategory();
    List<Widget> gridCategory = getGridCategory(listCategory);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: MyColors.primaryDark,
          statusBarIconBrightness: Brightness.light,
        ),
        title: Text("Shopping Cart"),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.shopping_cart),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Stack(
              children: [
                Container(
                  height: 200,
                  width: double.infinity,
                  child: Image.asset(
                    Img.get('image_18.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  height: 200,
                  width: double.infinity,
                  color: Colors.black.withOpacity(0.3),
                  child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Browse therough Amillion \nof Products at the \nbest price",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      )),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 12),
              transform: Matrix4.translationValues(0, -30, 0),
              child: Column(
                children: gridCategory,
              ),
            )
          ],
        ),
      ),
    );
    ;
  }

  List<Widget> getGridCategory(List<ShopCategory> listCategory) {
    List<Widget> wc = [];
    for (int i = 0; i < listCategory.length / 2; i++) {
      Widget w;
      w = Row(
        children: [
          getItemViewGrid(listCategory[i * 2]),
          Container(
            width: 2,
          ),
          getItemViewGrid(listCategory[i * 2 + 1]),
        ],
      );
      wc.add(w);
    }
    return wc;
  }

  Widget getItemViewGrid(ShopCategory s) {
    return Expanded(
      flex: 1,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4),
        ),
        color: Colors.white,
        elevation: 2,
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Container(
          height: 120,
          alignment: Alignment.center,
          padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Container(
              padding: EdgeInsets.all(10),
              child: Icon(
                s.icon,
                size: 40,
                color: Colors.grey[600],
              ),
            ),
            Text(
              s.title,
              textAlign: TextAlign.center,
              style: MyText.body1(context)!.copyWith(color: Colors.grey[800]),
            )
          ]),
        ),
      ),
    );
  }
}
