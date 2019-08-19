import 'package:flutter/material.dart';
import 'package:cards_navigation/cards/medium_card.dart';
import 'package:cards_navigation/resourses/custom_transition_animations.dart';
import 'package:cards_navigation/resourses/resource_custom_navigator.dart';
import 'third_page.dart';
import 'package:cards_navigation/cards/tall_card.dart';


class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('PAGINA DOIS');
    return Scaffold(
      appBar: AppBar(
        title: Text('Navigation'),
      ),
      drawer: Drawer(),
      body: Stack(
        children: <Widget>[
          TallCard(colors: Colors.orangeAccent,),
          Align(
            heightFactor: 10.7,
            widthFactor: 3.2,
            alignment: Alignment.bottomRight,
            child: Container(
              height: 50,
              width: 100,
              child: FloatingActionButton(
                shape: ContinuousRectangleBorder(
                  side: BorderSide(),
                  borderRadius: BorderRadius.circular(10),
                ),
                onPressed: () {
                  CustomNavigator.push(context, ThirdPage(), CustomTransitionAnimations.slideTransitionUp);
                  // Navigator.pushNamed(context, AppRouter.secondPage);
                },
                child: Align(
                  alignment: Alignment.center,
                  child: Text('Next Page'),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
