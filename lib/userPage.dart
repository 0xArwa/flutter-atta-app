import 'package:flutter/material.dart';
import 'main.dart';
import 'package:getwidget/getwidget.dart';
import 'policy.dart';
import 'aboutUs.dart';
import 'screens/signin_secreen.dart';

void main() => runApp(userPage());

class userPage extends StatelessWidget {
  // الصفحة الخاصة باليوزر
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(title: 'user page'),
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
      color: Colors.white,
      margin: const EdgeInsets.only(top: 10.0),
      child: Column(
        children: [
          GFCard(
            boxFit: BoxFit.cover,
            color: Colors.white,
            title: GFListTile(
              avatar: GFAvatar(
                backgroundImage: AssetImage(
                    '/Users/arwa/Desktop/unused_items_application/unused_items_app/lib/images/user.png'),
              ),
              title: Text('Aseel Hussien'),
              subTitle: Text('Phone number: 056666932'),
            ),
            content: Text("you have donated 3 items. Thank you"),
          ),
          GFCard(
            padding: EdgeInsets.all(5.0),
            boxFit: BoxFit.fitHeight,
            color: Colors.white,
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
                      MaterialPageRoute(builder: (context) => policy()),
                    );
                  },
                  child: Text('Privacy policy',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                      )),
                ),
                SizedBox(height: 40),
              ],
            ),
          ),
          GFCard(
            padding: EdgeInsets.all(5.0),
            boxFit: BoxFit.fitHeight,
            color: Colors.white,
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
                      MaterialPageRoute(builder: (context) => aboutUs()),
                    );
                  },
                  child: Text('About us',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                      )),
                ),
                SizedBox(height: 40),
              ],
            ),
          ),
          GFCard(
            padding: EdgeInsets.all(5.0),
            boxFit: BoxFit.fitHeight,
            color: Colors.white,
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
                      MaterialPageRoute(builder: (context) => SignInScreen()),
                    );
                  },
                  child: Text('Log out',
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 20,
                      )),
                ),
                SizedBox(height: 40),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
