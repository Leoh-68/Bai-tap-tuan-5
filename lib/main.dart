import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Bài tập tuần 5",
      initialRoute: '/',
      routes: {
        '/': (context) => const Signinpage(),
        '/error': (context) => const ErrorPage()
      },
    );
  }
}

class Signinpage extends StatefulWidget {
  const Signinpage({Key? key}) : super(key: key);
  @override
  SigninpageState createState() => SigninpageState();
}

class SigninpageState extends State<Signinpage> {
  late TextEditingController _email;
  late TextEditingController _pass;
  @override
  void initState() {
    super.initState();
    _email = TextEditingController();
    _pass = TextEditingController();
  }

  @override
  void dispose() {
    _email.dispose();
    _pass.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: const Color.fromRGBO(0, 141, 251, 0.41),
            body: Stack(children: <Widget>[
              Center(
                  child: Expanded(
                flex: 2,
                child: Column(
                  children: [
                    Padding(
                        padding: const EdgeInsets.fromLTRB(50, 100, 50, 50),
                        child: SizedBox(
                          height: 120,
                          child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(30.0)),
                                  color:
                                      const Color.fromRGBO(0, 141, 251, 0.41),
                                  border: Border.all(
                                      color: Colors.white, width: 5)),
                              child: Image.asset(
                                "images/mail_icon1.png",
                                scale: 5,
                              )),
                        )),
                    const Text(
                      "Sign In SkyMail",
                      style: TextStyle(
                          fontSize: 40,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    const Text(
                      "Speak, Chat and Gacha",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 50, 20, 50),
                      child: Column(
                        children: [
                          TextField(
                              controller: _email,
                              decoration: const InputDecoration(
                                  filled: true,
                                  fillColor: Colors.white,
                                  border: OutlineInputBorder(),
                                  labelText: 'Email',
                                  labelStyle: TextStyle(color: Colors.black))),
                          const Padding(padding: EdgeInsets.only(bottom: 10)),
                          TextField(
                            controller: _pass,
                            decoration: const InputDecoration(
                                filled: true,
                                fillColor: Colors.white,
                                border: OutlineInputBorder(),
                                labelText: 'Password',
                                labelStyle: TextStyle(color: Colors.black)),
                          ),
                        ],
                      ),
                    ),
                    const Padding(padding: EdgeInsets.only(top: 10)),
                    Row(
                      children: [
                        Expanded(
                            child: Padding(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: SizedBox(
                            height: 50,
                            child: TextButton(
                              onPressed: () {
                                setState(() {});
                                if (_email.text != "a" || _pass.text != "a") {
                                  Navigator.pushNamed(context, '/error');
                                }
                              },
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.resolveWith(
                                          (states) => Colors.black)),
                              child: const Text(
                                "Sign in",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                            ),
                          ),
                        )),
                      ],
                    )
                  ],
                ),
              ))
            ])));
  }
}

class ErrorPage extends StatelessWidget {
  const ErrorPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            backgroundColor: const Color.fromRGBO(0, 141, 251, 0.41),
            body: Stack(children: <Widget>[
              Center(
                  child: Expanded(
                flex: 2,
                child: Column(
                  children: [
                    Padding(
                        padding: const EdgeInsets.fromLTRB(50, 100, 50, 50),
                        child: SizedBox(
                          height: 120,
                          child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(30.0)),
                                  color:
                                      const Color.fromRGBO(0, 141, 251, 0.41),
                                  border: Border.all(
                                      color: Colors.white, width: 5)),
                              child: Image.asset(
                                "images/lock_icon.png",
                                scale: 5,
                              )),
                        )),
                    const Padding(padding: EdgeInsets.only(top: 10)),
                    const Text(
                      "Opps... couldn't Sign In",
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    const Padding(padding: EdgeInsets.only(top: 3)),
                    const Text(
                      "Your email and password incorrect.",
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Colors.white70),
                    ),
                    const Padding(padding: EdgeInsets.only(top: 3)),
                    const Text(
                      "Please, try again.",
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Colors.white70),
                    ),
                    const Padding(padding: EdgeInsets.only(top: 210)),
                    Row(
                      children: [
                        Expanded(
                            child: Padding(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: SizedBox(
                            height: 50,
                            child: TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.resolveWith(
                                          (states) => Colors.black)),
                              child: const Text(
                                "TRY AGAIN",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                            ),
                          ),
                        )),
                      ],
                    )
                  ],
                ),
              ))
            ])));
  }
}
