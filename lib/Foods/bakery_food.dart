import 'package:flutter/material.dart';
import 'package:food_final/Foods/bakerydetails.dart';
import 'package:food_final/lists/food_product_two.dart';
import 'package:food_final/utilities/appbar.dart';
import 'package:food_final/utilities/bottomnav_bar.dart';
import 'package:food_final/utilities/search_box.dart';

class bakerybody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeAppBar(context),
      bottomNavigationBar: buttonnavbar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            searchbox(),
            Expanded(child: GridView.builder(
              itemCount: products.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.75,
                  mainAxisSpacing: 20.0,
                  crossAxisSpacing: 20.0,
                ),
                itemBuilder: (context,index) => ItemCards(product: products[index],
                  press: () => Navigator.push(context, MaterialPageRoute(
                    builder: (context) => DetailsScreen(product:products[index],
                    ),
                  ),
                  ),
                ),
            ),
            ),
          ],
        ),
      ),
    );
  }
}

class ItemCards extends StatelessWidget {
  final Product product;
  final Function press;
  const ItemCards({
    Key key, this.product, this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: GestureDetector(
        onTap: press,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(10.0),
                height: 180,
                width: 160,
                decoration: BoxDecoration(
                  color: product.color,
                  borderRadius: BorderRadius.circular(18),
                ),
                child: Image.asset(product.image),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0/4),
                child: Text(product.title, style: TextStyle(
                    color: Color(0xFF535353),
                ),
                ),
              ),
              Text(product.price.toString(),style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
      ),
      );
  }
}

