import 'package:demonhacks/pages/ar/earringar.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Earrings extends StatefulWidget {
  @override
  _EarringsState createState() => _EarringsState();
}

class _EarringsState extends State<Earrings> {
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
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    child: Image.asset('images/top design.png'),
                  ),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.1,
                width: MediaQuery.of(context).size.width * 1,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          "Search",
                          style: TextStyle(
                              fontFamily: 'RougeScript',
                              color: HexColor('#FCBA6D'),
                              fontWeight: FontWeight.w600,
                              fontSize: 40),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          "Filter",
                          style: TextStyle(
                              fontFamily: 'RougeScript',
                              color: HexColor('#FCBA6D'),
                              fontWeight: FontWeight.w600,
                              fontSize: 40),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              InkWell(
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.15,
                  width: MediaQuery.of(context).size.width * 1,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      border: Border.all(color: HexColor('#FCBA6D'))),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => EarringAR()),
                  );
                },
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.15,
                width: MediaQuery.of(context).size.width * 1,
                decoration: BoxDecoration(
                    color: Colors.black,
                    border: Border.all(color: HexColor('#FCBA6D'))),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.15,
                width: MediaQuery.of(context).size.width * 1,
                decoration: BoxDecoration(
                    color: Colors.black,
                    border: Border.all(color: HexColor('#FCBA6D'))),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.2,
                width: MediaQuery.of(context).size.width * 1,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: Icon(Icons.arrow_left, color: HexColor('#FCBA6D')),
                      onPressed: null,
                    ),
                    IconButton(
                      icon: Icon(Icons.arrow_right, color: HexColor('#FCBA6D')),
                      onPressed: null,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
