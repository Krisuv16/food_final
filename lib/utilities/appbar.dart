import 'package:flutter/material.dart';

AppBar homeAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: Colors.black,
    elevation: 0,
    title: Center(
      child: RichText(
        text: TextSpan(
          style: Theme.of(context)
              .textTheme
          // ignore: deprecated_member_use
              .title
              .copyWith(fontWeight: FontWeight.bold),
          children: [
            TextSpan(text: "Food", style: TextStyle(color: Colors.white)),
            TextSpan(text: "Hub", style: TextStyle(color: Colors.blueGrey)),
          ],
        ),
      ),
    ),
    actions: <Widget>[
      IconButton(
          icon: Icon(
            Icons.location_on,
          ),
          onPressed: () {}),
    ],
  );
}
