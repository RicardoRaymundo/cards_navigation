import 'package:flutter/material.dart';
import 'card_page.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print('PAGINA DOIS');
    return Scaffold(
        appBar: AppBar(
          title: Text('Navigation'),
        ),
        drawer: Drawer(),
        body: CardPage()
    );
  }
}
