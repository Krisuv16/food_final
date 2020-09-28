import 'package:flutter/material.dart';
import 'package:food_final/homescreen/home_screen.dart';

class buttonnavbar extends StatefulWidget {
  @override
  _CustomBarState createState() => _CustomBarState();
}

class _CustomBarState extends State<buttonnavbar> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: (index) {
        setState(() {
          currentIndex = index;
        });
      },
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Colors.orange,
      unselectedItemColor: Colors.grey,
      showUnselectedLabels: true,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          title: Text('HOME'),
          icon: Icon(Icons.home)
        ),
        BottomNavigationBarItem(
          title: Text('SEARCH'),
          icon: Icon(Icons.search),
        ),
        BottomNavigationBarItem(
          title: Text('CART'),
          icon: Icon(Icons.shopping_cart),
        ),
        BottomNavigationBarItem(
          title: Text('PROFILE'),
          icon: Icon(Icons.person),
        ),
      ],
    );
  }
}
