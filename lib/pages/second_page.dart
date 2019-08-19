import 'package:flutter/material.dart';
import 'package:cards_navigation/cards/medium_card.dart';
import 'package:cards_navigation/resourses/custom_transition_animations.dart';
import 'package:cards_navigation/resourses/resource_custom_navigator.dart';
import 'third_page.dart';
import 'package:cards_navigation/cards/tall_card.dart';

class SecondPage extends StatelessWidget {
  Function selectedAnimation;

  SecondPage({@required Function this.selectedAnimation});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          TallCard(
            colors: Colors.orangeAccent,
          ),
          Positioned(
            top: 180,
            left: 40,
            child: SizedBox(
              height: 400,
              width: 280,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Image.network(
                      'http://br.web.img3.acsta.net/c_215_290/medias/nmedia/18/91/08/82/20128877.JPG',
                      fit: BoxFit.cover
                  ),
                  Image.network(
                      'https://http2.mlstatic.com/cartaz-poster-decoraco-matrix-reloaded-film-pintura-digital-D_NQ_NP_678643-MLB29600733498_032019-F.jpg',
                      fit: BoxFit.cover
                  ),
                  Image.network(
                      'https://www.papodecinema.com.br/wp-content/uploads/2014/03/20190408-matrix-revolutions-2003dvdplanetstorepk.jpg',
                      fit: BoxFit.cover
                  )
                ],
              ),
            ),
          ),
          Align(
            heightFactor: 11.7,
            widthFactor: 3.3,
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
                  CustomNavigator.push(
                      context,
                      ThirdPage(selectedAnimation: this.selectedAnimation,),
                      selectedAnimation);
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
