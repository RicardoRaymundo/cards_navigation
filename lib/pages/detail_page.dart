import 'package:flutter/material.dart';
import 'package:cards_navigation/cards/small_card.dart';

class DetailPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        child: Center(
          child: Hero(
            tag: 'imageHero',
            child: SmallCard(colors: Colors.amber,)
          ),
        ),
        onTap: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
