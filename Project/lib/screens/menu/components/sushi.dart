import 'package:flutter/material.dart';
import 'package:food_app/screens/details/details-screen.dart';
import 'package:food_app/screens/menu/components/sushi_card.dart';

class ItemList extends StatelessWidget {
  const ItemList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          ItemCard(
            svgSrc: "assets/images/salmon.svg",
            title: "Salmon Nigiri",
            //shopName: "",
            press: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return DetailsScreen();
                  },
                ),
              );
            },
          ),
          ItemCard(
            svgSrc: "assets/images/tuna.svg",
            title: "Tuna Nigiri",
            //shopName: "",
            press: () {},
          ),
        ],
      ),
    );
  }
}
