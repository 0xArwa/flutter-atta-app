import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:unused_items_app/submit_item.dart';
import 'items.dart';
import 'items2.dart';
import 'items3.dart';
import 'items4.dart';
import 'submit_item.dart';
import 'userPage.dart';
import 'search.dart';

/* الكلاس الرئيسي للصفحة الرئيسية من خلاله يتم التنقل لبقية الصفحات */
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Unused items',
      theme: ThemeData(
        primaryColor: const Color.fromRGBO(55, 190, 170, 1.0),
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        hoverColor: Colors.transparent,
      ),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int pageIndex = 0;

  final pages = [
    const Page1(),
    Submit_item(),
    search(),
    userPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Image.asset(
          '/Users/arwa/Desktop/unused_items_application/unused_items_app/lib/images/atta.png',
          height: 120,
          width: 150,
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: pages[pageIndex],
      bottomNavigationBar: buildMyNavBar(context),
    );
  }

/* ودجت خاص بالناف بار اسفل التطبيق */
  Container buildMyNavBar(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 0;
              });
            },
            icon: pageIndex == 0
                ? const Icon(
                    Icons.home_filled,
                    color: Colors.white,
                    size: 35,
                  )
                : const Icon(
                    Icons.home_outlined,
                    color: Colors.white,
                    size: 35,
                  ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 1;
              });
            },
            icon: pageIndex == 1
                ? const Icon(
                    Icons.add_box,
                    color: Colors.white,
                    size: 35,
                  )
                : const Icon(
                    Icons.add_box_outlined,
                    color: Colors.white,
                    size: 35,
                  ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 2;
              });
            },
            icon: pageIndex == 2
                ? const Icon(
                    Icons.manage_search,
                    color: Colors.white,
                    size: 35,
                  )
                : const Icon(
                    Icons.search,
                    color: Colors.white,
                    size: 35,
                  ),
          ),
          IconButton(
            enableFeedback: false,
            onPressed: () {
              setState(() {
                pageIndex = 3;
              });
            },
            icon: pageIndex == 3
                ? const Icon(
                    Icons.person,
                    color: Colors.white,
                    size: 35,
                  )
                : const Icon(
                    Icons.person_outline,
                    color: Colors.white,
                    size: 35,
                  ),
          ),
        ],
      ),
    );
  }
}

/* مكونات الصفحة الرئيسية تضم الاقسام الخاصة بالتبرعات*/
class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        margin: const EdgeInsets.only(top: 20.0),
        child: Column(
          children: [
            Expanded(
              child: Text(
                "Here, you don't have to worry, we got your back. ",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.black,
                    fontFamily: "Caveat",
                    fontWeight: FontWeight.w700),
              ),
            ),
            Expanded(
              child: Text(
                "Help yourself and others by publishing a post with one click. ",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 16.0,
                    color: Color.fromRGBO(55, 190, 170, 1.0),
                    fontFamily: "Caveat",
                    fontWeight: FontWeight.w300),
              ),
            ),
            Expanded(
              child: Text(
                "Atta is the place for you.",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 16.0,
                    color: Color.fromRGBO(55, 190, 170, 1.0),
                    fontFamily: "Caveat",
                    fontWeight: FontWeight.w300),
              ),
            ),
            GFCard(
              boxFit: BoxFit.cover,
              titlePosition: GFPosition.start,
              showOverlayImage: true,
              imageOverlay: AssetImage(
                '/Users/arwa/Desktop/unused_items_application/unused_items_app/lib/images/devices.jpeg',
              ),
              content: Text(
                "To check the available items in the electronic devices section",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                  shadows: [
                    Shadow(
                      blurRadius: 3.0,
                      color: Colors.black,
                      offset: Offset(2.0, 2.0),
                    ),
                  ],
                ),
              ),
              buttonBar: GFButtonBar(
                children: <Widget>[
                  TextButton(
                    style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all<Color>(
                          Color.fromRGBO(55, 190, 170, 1.0)),
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Items1()),
                      );
                    },
                    child: Text('Click here'),
                  ),
                ],
              ),
            ),
            GFCard(
              boxFit: BoxFit.fitWidth,
              titlePosition: GFPosition.start,
              showOverlayImage: true,
              imageOverlay: AssetImage(
                '/Users/arwa/Desktop/unused_items_application/unused_items_app/lib/images/clothes.jpg',
              ),
              content: Text(
                "To check the available items in the clothes section",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                  shadows: [
                    Shadow(
                      blurRadius: 3.0,
                      color: Colors.black,
                      offset: Offset(2.0, 2.0),
                    ),
                  ],
                ),
              ),
              buttonBar: GFButtonBar(
                children: <Widget>[
                  TextButton(
                    style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all<Color>(
                          Color.fromRGBO(55, 190, 170, 1.0)),
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Items2()),
                      );
                    },
                    child: Text('Click here'),
                  ),
                ],
              ),
            ),
            GFCard(
              boxFit: BoxFit.fitWidth,
              titlePosition: GFPosition.start,
              showOverlayImage: true,
              imageOverlay: AssetImage(
                '/Users/arwa/Desktop/unused_items_application/unused_items_app/lib/images/books.jpg',
              ),
              content: Text(
                "To check the available items in the books section",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                  shadows: [
                    Shadow(
                      blurRadius: 3.0,
                      color: Colors.black,
                      offset: Offset(2.0, 2.0),
                    ),
                  ],
                ),
              ),
              buttonBar: GFButtonBar(
                children: <Widget>[
                  TextButton(
                    style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all<Color>(
                          Color.fromRGBO(55, 190, 170, 1.0)),
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Items3()),
                      );
                    },
                    child: Text('Click here'),
                  ),
                ],
              ),
            ),
            GFCard(
              boxFit: BoxFit.fitWidth,
              titlePosition: GFPosition.start,
              showOverlayImage: true,
              imageOverlay: AssetImage(
                '/Users/arwa/Desktop/unused_items_application/unused_items_app/lib/images/furneture.jpg',
              ),
              content: Text(
                "To check the available items in the furneture section",
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                  shadows: [
                    Shadow(
                      blurRadius: 3.0,
                      color: Colors.black,
                      offset: Offset(2.0, 2.0),
                    ),
                  ],
                ),
              ),
              buttonBar: GFButtonBar(
                children: <Widget>[
                  TextButton(
                    style: ButtonStyle(
                      foregroundColor: MaterialStateProperty.all<Color>(
                          Color.fromRGBO(55, 190, 170, 1.0)),
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Items4()),
                      );
                    },
                    child: Text('Click here'),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
