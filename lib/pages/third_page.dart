import 'package:flutter/material.dart';
import 'package:cards_navigation/cards/small_card.dart';
import 'package:cards_navigation/resourses/custom_transition_animations.dart';
import 'package:cards_navigation/resourses/resource_custom_navigator.dart';
import 'detail_page.dart';

class ThirdPage extends StatelessWidget {

  List<Widget> cards = [

  ];

  @override
  Widget build(BuildContext context) {
    print('PAGINA DOIS');
    return Scaffold(
        appBar: AppBar(
          title: Text('Navigation'),
        ),
        drawer: Drawer(),
        body: ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            GestureDetector(
              child: Hero(
                tag: 'imageHero',
                child: Image.network(
                  'https://picsum.photos/250?image=9',
                ),
              ),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) {
                  return DetailPage();
                }));
              },
            ),
            Hero(
              tag: 'CARD 2',
              child: SmallCard(colors: Colors.amber,),
            ),
            Hero(
              tag: 'CARD 3',
              child: SmallCard(colors: Colors.deepOrangeAccent,),
            ),
            Hero(
              tag: 'CARD 4',
              child: SmallCard(colors: Colors.green,),
            ),
          ],
        ));
  }
}
