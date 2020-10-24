import 'package:demonhacks/login.dart';
import 'package:demonhacks/pages/earrings.dart';
import 'package:demonhacks/pages/necklace.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: PreferredSize(
          child: Container(
            height: 2,
            color: HexColor('#EBBF97'),
          ),
          preferredSize: Size.fromHeight(2.0),
        ),
        backgroundColor: HexColor('#282222'),
        elevation: 3,
        automaticallyImplyLeading: false,
        title: Text(
          "Welcome $name",
          style: TextStyle(
              fontFamily: 'Pacifico', fontSize: 20, color: HexColor('#EBBF97')),
        ),
      ),
      backgroundColor: HexColor('#333333'),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.1,
                width: MediaQuery.of(context).size.width * 1,
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
              Container(
                height: MediaQuery.of(context).size.height * 0.1,
                width: MediaQuery.of(context).size.width * 1,
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
                          "Earrings",
                          style: TextStyle(
                              fontFamily: 'Pacifico',
                              fontSize: 20,
                              color: HexColor('#EBBF97')),
                        ),
                      ],
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Earrings()),
                      );
                    },
                  ),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.1,
                width: MediaQuery.of(context).size.width * 1,
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
                          "Necklaces",
                          style: TextStyle(
                              fontFamily: 'Pacifico',
                              fontSize: 20,
                              color: HexColor('#EBBF97')),
                        ),
                      ],
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Necklace()),
                      );
                    },
                  ),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.1,
                width: MediaQuery.of(context).size.width * 1,
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
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: HexColor('#EBBF97'),
        child: Icon(
          Icons.logout,
          color: HexColor('#282222'),
        ),
        onPressed: () {
          signOutGoogle();
          Navigator.pop(context);
        },
      ),
    );
  }
}
