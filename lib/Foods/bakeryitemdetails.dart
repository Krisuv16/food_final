import 'package:flutter/material.dart';
import 'package:food_final/lists/food_product_two.dart';
import 'package:food_final/utilities/appbar.dart';
import 'package:food_final/utilities/bottomnav_bar.dart';
import 'package:food_final/utilities/search_box.dart';


class bakerydetailsbody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homeAppBar(context),
      bottomNavigationBar: buttonnavbar(),
      body: bdetailsbody(),
    );
  }
}

class bdetailsbody extends StatelessWidget {
  final Product product;

  const bdetailsbody({Key key, this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: size.height,
              child: Stack(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: size.height * 0.3),
                    height: 500,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25),
                      ),
                    ),
                  ),
                  bakerydashboard(product: product),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class bakerydashboard extends StatelessWidget {
  const bakerydashboard({
    Key key,
    @required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Aristocratic Hand Bag",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          Text(
            product.title,
            style: Theme.of(context).textTheme.headline4.copyWith(
                color: Colors.white, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
          Row(
            children: <Widget>[
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Price\n",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: Colors.black),
                    ),
                    TextSpan(
                      text: "\$${product.price}",
                      style: Theme.of(context)
                          .textTheme
                          .headline4
                          .copyWith(
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 20),
              Expanded(
                child: Hero(
                  tag: "${product.id}",
                  child: Image.asset(
                    product.image,
                    fit: BoxFit.fill,
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
