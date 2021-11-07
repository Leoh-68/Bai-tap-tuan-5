import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

void main() {
  runApp(const MailScreen());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  State<MyApp> createState() => _MyApp();
}

class _MyApp extends State<MyApp> {
  @override
  void initState() {
    super.initState();
     Future.delayed(
        const Duration(seconds: 3),
        () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MailScreen()),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Stack(children: <Widget>[
      Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/background.jpg"),
            fit: BoxFit.cover,
          ),
        ),
      ),
      Center(
          child: Expanded(
        flex: 2,
        child: Container(
            child: Column(
          children: [
            TextButton(onPressed: () {}, child: Text("aadadasdasdasdasaa")),
            Padding(padding: EdgeInsets.all(50)),
            Padding(
                padding: EdgeInsets.all(15),
                child: Image.asset(
                  "images/mail_icon1.png",
                  scale: 5,
                )),
            Text(
              "Sign In SkyMail",
              style: TextStyle(
                  fontSize: 40,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "Speak, Chat and Gacha",
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),
            Padding(padding: EdgeInsets.all(70)),
            Center(
                child: Image.asset(
              'images/loading.png',
              scale: 4,
            ))
          ],
        )),
      ))
    ])));
  }
}

class MailScreen extends StatefulWidget {
  const MailScreen({Key? key}) : super(key: key);
  @override
  State<MailScreen> createState() => _MailScreen();
}

class _MailScreen extends State<MailScreen> {
  @override
  Widget build(BuildContext context) {
    bool chk = false;
    Widget BuildBox(IconData ico, String str) {
      return CheckboxListTile(
        tileColor: Colors.white,
        secondary: Icon(ico),
        controlAffinity: ListTileControlAffinity.leading,
        title: Text(str),
        value: chk,
        onChanged: (bool? value) {
          if (chk == false) {
            chk = true;
          } else {
            chk = false;
          }
          setState(() {});
        },
      );
    }

    return MaterialApp(
        theme: new ThemeData(scaffoldBackgroundColor: Colors.grey[300]),
        home: Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                  child: Padding(
                padding: EdgeInsets.all(15),
                child: Row(
                  children: [
                    Expanded(
                        child: Center(
                      child: Text(
                        "Mailboxes",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    )),
                    Container(
                      child: TextButton(
                          onPressed: () {},
                          child: Text(
                            "Done",
                          )),
                    ),
                  ],
                ),
              )),
              Align(
                  alignment: Alignment.topLeft,
                  child: Column(
                    children: [
                      Padding(padding: EdgeInsets.only(top: 20)),
                      Padding(
                        padding: EdgeInsets.all(15),
                        child: Text("MailBoxes"),
                      ),
                    ],
                  )),
              BuildBox(Icons.ac_unit_outlined, "All Innox"),
              BuildBox(Icons.ac_unit_outlined, "ICloud"),
              BuildBox(Icons.ac_unit_outlined, "Gmail"),
              BuildBox(Icons.ac_unit_outlined, "Hot Mails"),
              BuildBox(Icons.ac_unit_outlined, "VIP"),
              Align(
                  alignment: Alignment.topLeft,
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(15),
                        child: Text("MailBoxes"),
                      ),
                    ],
                  )),
              BuildBox(Icons.ac_unit_outlined, "Secure"),
              BuildBox(Icons.ac_unit_outlined, "Nofications"),
            ],
          ),
        ));
  }
}

// class Checkbox extends StatefulWidget {
//   Checkbox({Key? key}) : super(key: key);
//   @override
//   State<Checkbox> createState() => _Checkbox();
// }

// class _Checkbox extends State<Checkbox> {
 

//   @override
//   Widget build(BuildContext context) {
//     bool chk = false;
//     List<Widget> lstWidget = [];
//     return BuildBox(chk, Icons.ac_unit_outlined, "asdasd");
//   }
// }
