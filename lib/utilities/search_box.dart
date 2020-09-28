import 'package:flutter/material.dart';

Container searchbox() {
  return Container(
    margin: EdgeInsets.all(20),
    padding: EdgeInsets.all(10),
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey[200]
    ),
    child: Row(
      children: <Widget>[
        Expanded(
          child: TextField(
            decoration: InputDecoration(
                hintText: "Search Me",
                hintStyle: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w700),
                border: InputBorder.none,
                contentPadding: EdgeInsets.all(10)
            ),
          ),
        ),
        Icon(
          Icons.search,color: Colors.black,size: 30,
        ),
      ],
    ),
  );
}