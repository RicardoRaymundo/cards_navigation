import 'package:flutter/material.dart';
import 'package:cards_navigation/cards/small_card.dart';
import 'package:cards_navigation/resourses/custom_transition_animations.dart';
import 'package:cards_navigation/resourses/resource_custom_navigator.dart';
import 'detail_page.dart';
import 'package:cards_navigation/page_view/page_view_main.dart';

class ThirdPage extends StatelessWidget {

  Function selectedAnimation;

  ThirdPage({@required Function this.selectedAnimation});

  List<Widget> cards = [
    SmallCard(
      colors: Colors.teal,
      child: MyHomePage()
    ),
    SmallCard(
      colors: Colors.amber,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Icon(Icons.title,
          size: 100,
          ),
          Icon(Icons.add,
            size: 100,
          ),
          Icon(Icons.add_location,
            size: 100,
          ),
          Icon(Icons.accessible_forward,
            size: 100,
          ),
          Icon(Icons.airline_seat_flat_angled,
            size: 100,
          ),
          Icon(Icons.blur_circular,
            size: 100,
          ),
          Icon(Icons.child_care,
            size: 100,
          ),
        ],
      ),
    ),
    SmallCard(colors: Colors.deepOrangeAccent,),
    SmallCard(colors: Colors.green,),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
