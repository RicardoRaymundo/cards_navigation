import 'package:flutter/material.dart';
import 'card_page.dart';
import 'package:cards_navigation/app/app_router.dart';
import 'package:cards_navigation/resourses/resource_custom_navigator.dart';
import 'package:cards_navigation/second_page.dart';
import 'package:cards_navigation/resourses/custom_transition_animations.dart';

class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  Function selectedAnimation = CustomTransitionAnimations.scaleTransition;

  DropdownButton _normalDown() => DropdownButton<Function>(
        items: [
          DropdownMenuItem(
            value: CustomTransitionAnimations.scaleTransition,
            child: Text(
              "Scale Transition",
            ),
          ),
          DropdownMenuItem(
            value: CustomTransitionAnimations.slideTransitionDown,
            child: Text(
              "Slide Down",
            ),
          ),
          DropdownMenuItem(
            value: CustomTransitionAnimations.slideTransitionUp,
            child: Text(
              "Slide Up",
            ),
          ),
          DropdownMenuItem(
            value: CustomTransitionAnimations.slideTransitionLeft,
            child: Text(
              "Slide Left",
            ),
          ),
          DropdownMenuItem(
            value: CustomTransitionAnimations.slideTransitionRight,
            child: Text(
              "Slide Right",
            ),
          ),
        ],
        onChanged: (value) {
          setState(() {
            selectedAnimation = value;
          });
        },
        value: selectedAnimation,
      );

  @override
  Widget build(BuildContext context) {
    print('PAGINA UM');
    return Scaffold(
      appBar: AppBar(
        title: Text('Navigation'),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            ListTile(
              title: Text("Animated Transition Example"),
              trailing: Icon(Icons.arrow_forward),
            ),
            ListTile(
              title: Text("Page View Example"),
              trailing: Icon(Icons.arrow_forward),
            ),
          ],
        ),
      ),
      body: Stack(
        children: <Widget>[
          CardPage(),
          Align(
            heightFactor: 9,
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 50,
              width: 100,
              child: FloatingActionButton(
                shape: ContinuousRectangleBorder(
                  side: BorderSide(),
                  borderRadius: BorderRadius.circular(10),
                ),
                onPressed: () {
                  CustomNavigator.push(context, SecondPage(), selectedAnimation);
                  // Navigator.pushNamed(context, AppRouter.secondPage);
                },
                child: Align(
                  alignment: Alignment.center,
                  child: Text('Next Page'),
                ),
              ),
            ),
          ),
          Align(
            heightFactor: 1,
            child: _normalDown(),
          ),
        ],
      ),
    );
  }
}
