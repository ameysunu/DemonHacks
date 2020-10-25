import 'package:flutter/material.dart';
import 'package:flutter_unity/flutter_unity.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:http/http.dart' as http;

class EarringAR extends StatefulWidget {
  @override
  _EarringARState createState() => _EarringARState();
}

class _EarringARState extends State<EarringAR> {
  UnityViewController unityViewController;

  double _sliderValue = 1.0;
  String _projectKey = 'odd-surf-9217';
  String _entryID = 'e3bac17c-62ad-4ff8-ae5c-d7d69ad5bec1';

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

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
          "Earring AR",
          style: TextStyle(
              fontFamily: 'Pacifico',
              fontSize: 25,
              fontWeight: FontWeight.w600,
              color: HexColor('#EBBF97')),
        ),
      ),
      body: Stack(
        children: <Widget>[
          UnityView(
            onCreated: onUnityViewCreated,
            onReattached: onUnityViewReattached,
            onMessage: onUnityViewMessage,
          ),
          Positioned(
            bottom: 20,
            left: 20,
            right: 20,
            child: Card(
              color: HexColor('#282222'),
              elevation: 10,
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Text("Zoom:",
                        style: TextStyle(
                            fontFamily: 'Pacifico',
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                            color: HexColor('#EBBF97'))),
                  ),
                  Slider(
                    onChanged: (value) {
                      setState(() {
                        _sliderValue = value;
                      });
                      setScale(value.toString());
                    },
                    value: _sliderValue,
                    min: 0.1,
                    max: 10,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void onUnityViewCreated(UnityViewController controller) {
    print('onUnityViewCreated');

    unityViewController = controller;
  }

  void onUnityViewReattached(UnityViewController controller) {
    print('onUnityViewReattached');
  }

  void onUnityViewMessage(UnityViewController controller, String message) {
    print('onUnityViewMessage');

    print(message);
  }

  void setScale(String scale) {
    String url = 'https://console.echoar.xyz/post';
    print(scale);
    http.post(url, body: {
      'key': _projectKey,
      'entry': _entryID,
      'data': 'scale',
      'value': scale
    }).then((value) => print(value.body));
  }
}
