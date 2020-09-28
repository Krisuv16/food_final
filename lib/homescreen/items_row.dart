import 'package:flutter/material.dart';
import 'package:food_final/Foods/bakery_food.dart';
import 'package:food_final/Foods/bakerydetails.dart';
import 'package:food_final/Foods/bakeryitemdetails.dart';

class items_row extends StatelessWidget {
  const items_row({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Column(
          children: <Widget>[
            GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => bakerybody()),);
              },
              child: Container(
                margin: EdgeInsets.only(left: 10),
                decoration: BoxDecoration(
                    color: Colors.pink[100],
                    borderRadius: BorderRadius.circular(15)),
                padding: EdgeInsets.symmetric(vertical: 25, horizontal: 15),
                alignment: Alignment.center,
                child: Image.asset("lib/img/donut.png", width: 50, height: 50),
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Text("Bakery",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w700)),
          ],
        ),
        Column(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  color: Colors.blue[100],
                  borderRadius: BorderRadius.circular(15)),
              padding: EdgeInsets.symmetric(vertical: 25, horizontal: 15),
              alignment: Alignment.center,
              child: Image.asset("lib/img/milk.png", width: 50, height: 50),
            ),
            SizedBox(
              height: 8,
            ),
            Text("Bakery",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w700)),
          ],
        ),
        Column(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                  color: Colors.yellow[100],
                  borderRadius: BorderRadius.circular(15)),
              padding: EdgeInsets.symmetric(vertical: 25, horizontal: 15),
              alignment: Alignment.center,
              child: Image.asset("lib/img/fish.png", width: 50, height: 50),
            ),
            SizedBox(
              height: 8,
            ),
            Text("Fish",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w700)),
          ],
        ),
        Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(right: 10),
              decoration: BoxDecoration(
                  color: Colors.pink[100],
                  borderRadius: BorderRadius.circular(15)),
              padding: EdgeInsets.symmetric(vertical: 25, horizontal: 15),
              alignment: Alignment.center,
              child: Image.asset(
                  "lib/img/fast-food.png", width: 50, height: 50),
            ),
            SizedBox(
              height: 8,
            ),
            Text("Fast-Food",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w700)),
          ],
        ),
      ],
    );
  }
}