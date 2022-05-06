import 'package:flutter/material.dart';
import 'main.dart';

void main() => runApp(Items3());

class Items3 extends StatelessWidget {
  // صفحة تبرعات الكتب
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(title: 'Books'),
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
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: BackButton(
            color: Color.fromRGBO(55, 190, 170, 1.0),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HomePage()),
              );
            },
          ),
          title: Image.asset(
            '/Users/arwa/Desktop/unused_items_application/unused_items_app/lib/images/atta.png',
            height: 120,
            width: 150,
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
        ),
        body: ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
          children: <Widget>[
            ProductBox(
                name: "Pre calculus book",
                description:
                    "for free I don't need it",
                number: 0597969688,
                image: "books.jpg"),
            ProductBox(
                name: "10 books",
                description: "I finishied reading them and they still new",
                number: 0503514644,
                image: "books.jpg"),
          ],
        ));
  }
}

class ProductBox extends StatelessWidget {
  ProductBox(
      {Key? key,
      required this.name,
      required this.description,
      required this.number,
      required this.image})
      : super(key: key);
  final String name;
  final String description;
  final int number;
  final String image;

  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(2),
        height: 120,
        child: Card(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
              Image.asset(
                  "/Users/arwa/Desktop/unused_items_application/unused_items_app/lib/images/" +
                      image),
              Expanded(
                  child: Container(
                      padding: EdgeInsets.all(5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Text(this.name,
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Text(this.description),
                          Text("Phone number: " + this.number.toString()),
                        ],
                      )))
            ])));
  }
}
