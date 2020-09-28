import 'package:flutter/material.dart';
import 'package:food_final/lists/food_product_two.dart';
import 'package:food_final/utilities/appbar.dart';
import 'package:food_final/utilities/bottomnav_bar.dart';
import 'bakeryitemdetails.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;

  const DetailsScreen({Key key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.color,
      appBar: homeAppBar(context),
      bottomNavigationBar: buttonnavbar(),
      body: bdetailsbody(product: product),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: product.color,
      elevation: 0,
      leading: IconButton(icon: IconButton(icon: Icon(Icons.keyboard_backspace),
        onPressed: () => Navigator.pop(context),)
      ),
      actions: <Widget>[
        IconButton(
            icon: IconButton(icon: Icon(Icons.search), onPressed: () {})),
        IconButton(
            icon:
                IconButton(icon: Icon(Icons.shopping_cart), onPressed: () {})),
        SizedBox(width: 20.0 / 2)
      ],
    );
  }
}
