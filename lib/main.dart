import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final email = TextEditingController();
    final pass = TextEditingController();

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
            Padding(padding: EdgeInsets.all(50)),
            Padding(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Column(
                children: [
                  TextField(
                    controller: email,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(),
                      labelText: 'Email',
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(bottom: 10)),
                  TextField(
                    controller: pass,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                    ),
                  ),
                ],
              ),
            ),
            Padding(padding: EdgeInsets.all(50)),
            ElevatedButton(
                onPressed: () {},
                child: Text("Sign In"),
                style: ButtonStyle(
                    foregroundColor:
                        MaterialStateProperty.all<Color>(Colors.white),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.red),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.zero,
                            side: BorderSide(color: Colors.red)))))
          ],
        )),
      ))
    ])));
  }
}
