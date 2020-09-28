import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:food_final/lists/food_list.dart';
import 'package:food_final/utilities/search_box.dart';

import 'items_row.dart';

class home_screen extends StatelessWidget {
  List<FoodModel> foodlist = FoodModel.list;
  // PageController pageController = PageController(viewportFraction: .7);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        searchbox(),
        items_row(),
        Row(
          children: <Widget>[
            Center(
              child: Container(
                margin: EdgeInsets.all(50),
                child: 
                Text("More content will be added"),
              ),
              
            ),
            Text("Click Bakeryy")
          ],
        ),
      ],
    );
  }
}