import 'package:flutter/material.dart';


/// This is the stateless widget that the main application instantiates.
class TallCard extends StatelessWidget {
  Color colors;
  TallCard({Key key, Color this.colors, }) : super(key: key);

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
        child: InkWell(
          splashColor: Colors.blue.withAlpha(30),
          onTap: () {
            print('Card tapped.');
          },
          child: Container(
            width: deviceSize.width * 0.9,
            height: deviceSize.height * 0.9,
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
                      'A card that can be tapped',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),

    );

  }
}
