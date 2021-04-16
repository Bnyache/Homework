import 'package:flutter/material.dart';
import 'package:food_app/components/search_box.dart';
import 'package:food_app/screens/menu/components/category_list.dart';
import 'package:food_app/screens/menu/components/sushi.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          CategoryList(),
          ItemList(),
        ],
      ),
    );
  }
}
