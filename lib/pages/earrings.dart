import 'package:demonhacks/pages/necklace.dart';
import 'package:demonhacks/pages/earintro.dart';
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
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Container(
                          height: 100,
                          width: 100,
                          child: Image.asset('images/objects/earr1.png'),
                        ),
                      ),
                      Container(
                        height: MediaQuery.of(context).size.height * 0.9,
                        width: MediaQuery.of(context).size.width * 0.6,
                        child: Center(
                          child: Text(
                            'Simple single pearl studded earrings',
                            style: TextStyle(
                                fontFamily: 'RougeScript',
                                fontWeight: FontWeight.w600,
                                color: HexColor('#FCBA6D'),
                                fontSize: 25),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => EarIntro()),
                  );
                },
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.15,
                width: MediaQuery.of(context).size.width * 1,
                decoration: BoxDecoration(
                    color: Colors.black,
                    border: Border.all(color: HexColor('#FCBA6D'))),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        height: 100,
                        width: 100,
                        child: Image.asset('images/objects/earr2.png'),
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.9,
                      width: MediaQuery.of(context).size.width * 0.6,
                      child: Center(
                        child: Text(
                          'Diamond and gold encrusted lively rings',
                          style: TextStyle(
                              fontFamily: 'RougeScript',
                              fontWeight: FontWeight.w600,
                              color: HexColor('#FCBA6D'),
                              fontSize: 25),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.15,
                width: MediaQuery.of(context).size.width * 1,
                decoration: BoxDecoration(
                    color: Colors.black,
                    border: Border.all(color: HexColor('#FCBA6D'))),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        height: 100,
                        width: 100,
                        child: Image.asset('images/objects/earr3.png'),
                      ),
                    ),
                    Container(
                      height: MediaQuery.of(context).size.height * 0.9,
                      width: MediaQuery.of(context).size.width * 0.6,
                      child: Center(
                        child: Text(
                          'Platinum Rouge cranked with gold plating',
                          style: TextStyle(
                              fontFamily: 'RougeScript',
                              fontWeight: FontWeight.w600,
                              color: HexColor('#FCBA6D'),
                              fontSize: 25),
                        ),
                      ),
                    ),
                  ],
                ),
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
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Necklace()),
                        );
                      },
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
