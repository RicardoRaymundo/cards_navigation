import 'package:flutter/material.dart';


/// This is the stateless widget that the main application instantiates.
class SmallCard extends StatelessWidget {
  Color colors;
  Widget child;
  SmallCard({Key key, Color this.colors, Widget this.child }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final deviceSize = MediaQuery
        .of(context)
        .size;

    return Center(
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
          side: BorderSide(
            color: Colors.black,
            width: 2.0,
          ),
        ),
        color: this.colors,
        child: Container(
            width: deviceSize.width * 0.9,
            height: deviceSize.height * 0.4,
            child: Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: <Widget>[
                    Icon(
                      Icons.account_box,
                      size: 40,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'A card Hero!',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 140,
                      child: this.child,
                    )
                  ],
                ),
              ),
            ),
          ),

      ),

    );

  }
}
