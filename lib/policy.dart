import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

void main() => runApp(policy());
/* صفحة سياسة الخصوصية الخاصة بالتطبيق*/
class policy extends StatelessWidget {
  // This widget is the root of your application.
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
            title: Text('Atta privacy policy ',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                )),
          ),
          content: Text(" We may change this Privacy Policy from time to time. If we make changes," +
              " we will notify you by revising the date at the top of this policy and, in some cases," +
              " we may provide you with additional notice (such as adding a statement to our website or providing you with a notification)." +
              " We encourage you to review this Privacy Policy regularly to stay informed about our information practices and the choices available to you." +
              "We collect information you provide directly to us. For example, you share information directly with us when you create an account, fill out a form, submit or post The types of personal information we may collect include your name, display name, username, bio, email address, business information, your content, including your avatar image, photos, posts, responses, and series published by you, and any other information you choose to provide."),
        ),
      ],
    ));
  }
}
