import 'package:flutter/material.dart';
import 'main.dart';
import 'package:getwidget/getwidget.dart';

void main() => runApp(search());
/*صفحة البحث مجرد واجهة */
class search extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(title: 'search page'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(height: 250),
          TextFormField(
            decoration: InputDecoration(
                labelText: 'Search bar',
                icon: Icon(
                  Icons.search,
                  size: 30,
                )),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20.0),
            height: 40,
            width: 100,
            child: Expanded(
              flex: 1,
              child: RaisedButton(
                color: Color.fromRGBO(55, 190, 170, 1.0),
                onPressed: () {},
                child: Text("Search"),
              ),
            ),
          )
        ],
      ),
    );
  }
}
