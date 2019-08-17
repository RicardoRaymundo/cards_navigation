import 'package:flutter/material.dart';
import 'card_page.dart';
import 'package:cards_navigation/app/app_router.dart';
import 'package:cards_navigation/resourses/resource_custom_navigator.dart';
import 'package:cards_navigation/second_page.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('PAGINA UM');
    return Scaffold(
      body: Stack(
        children: <Widget>[
          CardPage(),
          Align(
            heightFactor: 11,
            alignment: Alignment.bottomCenter,
            child: FloatingActionButton(
                shape: ContinuousRectangleBorder(
                    side: BorderSide(),
                    borderRadius: BorderRadius.circular(10)
                ),
                onPressed: () {
              CustomNavigator.push(context, SecondPage());
              // Navigator.pushNamed(context, AppRouter.secondPage);
            }),
          ),
        ],
      ),
    );
  }
}
