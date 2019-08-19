import 'package:flutter/material.dart';
import 'package:cards_navigation/cards/small_card.dart';
import 'package:cards_navigation/resourses/custom_transition_animations.dart';
import 'package:cards_navigation/resourses/resource_custom_navigator.dart';
import 'detail_page.dart';

class ThirdPage extends StatelessWidget {

  List<Widget> cards = [
    SmallCard(colors: Colors.teal,),
    SmallCard(colors: Colors.amber,),
    SmallCard(colors: Colors.deepOrangeAccent,),
    SmallCard(colors: Colors.green,),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Third Page'),
        ),
        drawer: Drawer(),
        body: ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            GestureDetector(
              child: Hero(
                tag: 'CARD 1',
                child: cards[0]
              ),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) {
                  return DetailPage(widget: cards[0],);
                }));
              },
            ),
            GestureDetector(
              child: Hero(
                  tag: 'CARD 2',
                  child: cards[1]
              ),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) {
                  return DetailPage(widget: cards[1],);
                }));
              },
            ),
            GestureDetector(
              child: Hero(
                  tag: 'CARD 3',
                  child: cards[2]
              ),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) {
                  return DetailPage(widget: cards[2],);
                }));
              },
            ),
            GestureDetector(
              child: Hero(
                  tag: 'CARD 4',
                  child: cards[3]
              ),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) {
                  return DetailPage(widget: cards[3],);
                }));
              },
            ),
          ],
        ));
  }
}
