import 'package:flutter/material.dart';
import 'package:cards_navigation/cards/small_card.dart';

class DetailPage extends StatelessWidget {

  Widget widget;
  DetailPage({this.widget});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        child: Center(
          child: Hero(
            tag: 'imageHero',
            child: Stack(
              children: <Widget>[
                this.widget,
              ],
            )
          ),
        ),
        onTap: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
