import 'package:flutter/material.dart';

class CustomNavigator{
  static Widget slideTransition(Animation<double> animation, Animation<double> secondaryAnimation, Widget child) {
    return SlideTransition(
      position: new Tween<Offset>(
        begin: const Offset(1.0, 0.0),
        end: Offset.zero,
      ).animate(animation),
      child: new SlideTransition(
        position: new Tween<Offset>(
          begin: Offset.zero,
          end: const Offset(1.0, 0.0),
        ).animate(secondaryAnimation),
        child: child,
      ),
    );
  }

  static push(BuildContext context, newRoute) {
    final pageRoute = PageRouteBuilder(
      pageBuilder: (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation) {
        return newRoute;
      },
      transitionsBuilder: (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation, Widget child) {
        return slideTransition(animation, secondaryAnimation, child);
      },
    );

    Navigator.of(context, rootNavigator: true).push(pageRoute);
  }

  static showPlayer(BuildContext context, newRoute) {
    final pageRoute = PageRouteBuilder(
      pageBuilder: (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation) {
        return newRoute;
      },
      transitionsBuilder: (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation, Widget child) {
        return child;
      },
    );

    //Navigator.of(context).pushAndRemoveUntil(pageRoute, ModalRoute.withName('/HomePage'));
    Navigator.of(context, rootNavigator: true).push(pageRoute);
  }

  static pushAndRemoveUntil(BuildContext context, newRoute) {
    final pageRoute = PageRouteBuilder(
      pageBuilder: (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation) {
        return newRoute;
      },
      transitionsBuilder: (BuildContext context, Animation<double> animation, Animation<double> secondaryAnimation, Widget child) {
        return slideTransition(animation, secondaryAnimation, child);
      },
    );

    Navigator.of(context).pushAndRemoveUntil(pageRoute, ModalRoute.withName('/'));
  }
}