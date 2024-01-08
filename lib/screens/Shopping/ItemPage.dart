import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_ui/data/dummy.dart';
import 'package:flutter_ui/data/img.dart';
import 'package:flutter_ui/data/my_colors.dart';
import 'package:flutter_ui/model/shop_product.dart';

class ItemPage extends StatefulWidget {
  const ItemPage({Key? key}) : super(key: key);

  @override
  State<ItemPage> createState() => _ItemPageState();
}

class _ItemPageState extends State<ItemPage> {
  List<ShopProduct> items = [];
  List<Widget> itemsTile = [];
  getItems() {
    items = Dummy.getShoppingProduct();
    items.shuffle();

    items.forEach((element) {
      itemsTile.add(Text(element.title));
    });
    //itemsTile.add(Text("Mubiito ${itemsTile.length}"));

    setState(() {});
  }

  itemUtil(ShopProduct item) {
    return Container(
      padding: EdgeInsets.all(2),
      child: Card(
        margin: EdgeInsets.all(0),
        elevation: 1,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(2),
        ),
        clipBehavior: Clip.antiAliasWithSaveLayer,
        child: Column(
          children: [
            Expanded(
                child: Image.asset(
              Img.get(item.image),
              width: double.infinity,
              fit: BoxFit.cover,
            ))
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    getItems();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: MyColors.primaryDark,
          statusBarIconBrightness: Brightness.light,
        ),
        title: Text("Products page"),
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
      body: GridView.count(
        crossAxisCount: 2,
        scrollDirection: Axis.vertical,
        childAspectRatio: 0.8,
        crossAxisSpacing: 2,
        mainAxisSpacing: 2,
        padding: EdgeInsets.all(4),
        children: itemsTile as List<Widget>,
      ),
    );
  }
}
