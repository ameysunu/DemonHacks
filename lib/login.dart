import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('#333333'),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.2,
                width: MediaQuery.of(context).size.width * 1,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.5,
                width: MediaQuery.of(context).size.width * 1,
                decoration: BoxDecoration(
                    color: HexColor('#4A4848'),
                    border: Border.all(color: HexColor('#EAAD13'))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Login",
                      style: TextStyle(
                        fontFamily: 'Pacifico',
                        fontSize: 30,
                        color: HexColor('#EBAF76'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10.0, 30, 10, 10),
                      child: RaisedButton(
                        color: HexColor('#B3B1B1'),
                        child: Container(
                          height: 50,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Container(
                                  height: 25,
                                  width: 25,
                                  child: Image.asset("images/google.png"),
                                ),
                              ),
                              Text(
                                "Sign in with Google",
                                style: TextStyle(
                                    color: HexColor('#333333'), fontSize: 18),
                              ),
                            ],
                          ),
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        onPressed: () {
                          null;
                        },
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: 40,
                  width: 100,
                  child: Image.asset('images/designwhite.png'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
