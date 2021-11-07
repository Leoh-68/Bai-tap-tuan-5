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
        '/error': (context) => const ErrorPage(),
        '/loading': (context) => const LoadingScreen()
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
        title: "Sign In",
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
                                } else {
                                  Navigator.pushNamed(context, '/loading');
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
        title: "Try Again",
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

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({Key? key}) : super(key: key);
  @override
  State<LoadingScreen> createState() => _LoadingScreen();
}

class _LoadingScreen extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
        const Duration(seconds: 3),
        () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const MailScreen()),
            ));
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Loading........",
        home: Scaffold(
            backgroundColor: const Color.fromRGBO(0, 141, 251, 0.41),
            body: Stack(children: <Widget>[
              Center(
                  child: Expanded(
                flex: 2,
                child: Column(
                  children: [
                    const Padding(padding: EdgeInsets.all(50)),
                    Padding(
                        padding: const EdgeInsets.all(15),
                        child: Image.asset(
                          "images/mail_icon1.png",
                          scale: 5,
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
                    const Padding(padding: EdgeInsets.all(70)),
                    Center(
                        child: Image.asset(
                      'images/loading.png',
                      scale: 4,
                    ))
                  ],
                ),
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
        title: "Mail Boxes",
        theme: ThemeData(scaffoldBackgroundColor: Colors.grey[300]),
        home: Scaffold(
          appBar: AppBar(
            title: const Align(
              alignment: Alignment.center,
              child: Text("Mail Boxes"),
            ),
            actions: [
              TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Done",
                    style: TextStyle(color: Colors.white),
                  ))
            ],
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              // Container(
              //     child: Padding(
              //   padding: EdgeInsets.all(15),
              //   child: Row(
              //     children: [
              //       Expanded(
              //           child:
              //       Container(
              //         child: ,
              //       ),
              //     ],
              //   ),
              // )),
              Align(
                  alignment: Alignment.topLeft,
                  child: Column(
                    children: const [
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
                    children: const [
                      Padding(
                        padding: EdgeInsets.all(15),
                        child: Text("SpecailFolder"),
                      ),
                    ],
                  )),
              Expanded(
                  child: Container(
                      color: Colors.white,
                      child: Column(
                        children: [
                          BuildBox(Icons.ac_unit_outlined, "Secure"),
                          BuildBox(Icons.ac_unit_outlined, "Nofications"),
                        ],
                      ))),
              Container(
                decoration: const BoxDecoration(
                    border:
                        Border(top: BorderSide(width: 3, color: Colors.blue))),
                child: const SizedBox(
                  height: 60,
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                      "Delete",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
