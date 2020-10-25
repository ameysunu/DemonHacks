import 'package:demonhacks/pages/ar/necklacear.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class NeckIntro extends StatefulWidget {
  @override
  _NeckIntroState createState() => _NeckIntroState();
}

class _NeckIntroState extends State<NeckIntro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor('#333333'),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.2,
              width: MediaQuery.of(context).size.width * 1,
              child: Align(
                alignment: Alignment.topLeft,
                child: Container(
                  child: Image.asset('images/top design.png'),
                ),
              ),
            ),
            Center(
              child: Container(
                height: MediaQuery.of(context).size.height * 0.3,
                width: MediaQuery.of(context).size.width * 1,
                child: Container(
                  child: Image.asset('images/objects/man_neck.png'),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                height: 50,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      side: BorderSide(color: HexColor('#EBBF97'))),
                  color: HexColor('#282222'),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "View in AR",
                        style: TextStyle(
                            fontFamily: 'RougeScript',
                            fontWeight: FontWeight.w600,
                            fontSize: 25,
                            color: HexColor('#EBBF97')),
                      ),
                    ],
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => NecklaceAR()),
                    );
                  },
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                height: 50,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      side: BorderSide(color: HexColor('#EBBF97'))),
                  color: HexColor('#282222'),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Realtime AR",
                        style: TextStyle(
                            fontFamily: 'RougeScript',
                            fontWeight: FontWeight.w600,
                            fontSize: 25,
                            color: HexColor('#EBBF97')),
                      ),
                    ],
                  ),
                  onPressed: () {
                    null;
                  },
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  height: 20,
                  child: Image.asset('images/designwhite.png'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
