import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

void main() => runApp(aboutUs());

class aboutUs extends StatelessWidget {
  // صفحة خاصة بالتطبيق واهدافه
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(title: 'privacy policy'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      shrinkWrap: true,
      padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
      children: <Widget>[
        GFCard(
          boxFit: BoxFit.cover,
          color: Colors.white,
          title: GFListTile(
            title: Text('About Us ',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                )),
          ),
          content: Text(
              " This is a non-prophit application made for those who's in need. " +
                  "Through Atta people in Saudi Arabia will have the chance to donate the items they no longer use for those who needs it. you can simply add a new post and whoever need the item will contact you through the provided details. "),
        ),
      ],
    ));
  }
}
