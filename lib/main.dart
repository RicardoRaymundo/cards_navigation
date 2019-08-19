// Flutter code sample for material.Card.2

// This sample shows creation of a [Card] widget that can be tapped. When
// tapped this [Card]'s [InkWell] displays an "ink splash" that fills the
// entire card.

import 'package:flutter/material.dart';

import 'package:cards_navigation/app/app_router.dart';
import 'package:cards_navigation/cards/medium_card.dart';
import 'package:cards_navigation/pages/first_page.dart';
import 'package:cards_navigation/pages/second_page.dart';
import 'package:cards_navigation/page_view/page_view_main.dart';

void main() => runApp(MyApp());

/// This Widget is the main application widget.
class MyApp extends StatelessWidget {
  static const String _title = 'Flutter Code Sample';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
      ),
      initialRoute: AppRouter.animatedTransition,
      routes: {
        AppRouter.animatedTransition: (BuildContext context) => FirstPage(),
        AppRouter.pageView: (BuildContext context) => MyHomePage(),
      },
    );
  }
}


