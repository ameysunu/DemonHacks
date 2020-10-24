import 'package:flutter/material.dart';
import 'package:flutter_unity/flutter_unity.dart';
import 'package:http/http.dart' as http;

class Necklace extends StatefulWidget {
  @override
  _NecklaceState createState() => _NecklaceState();
}

class _NecklaceState extends State<Necklace> {
  UnityViewController unityViewController;

  double _sliderValue = 1.0;
  String _projectKey = 'odd-moon-9343';
  String _entryID = '01de32da-aca8-4045-9fdc-276c8fbae647';

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
        title: const Text('echoAR unity app'),
      ),
      body: Column(
        children: [
          Stack(
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
                  elevation: 10,
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Text("Model Scale:"),
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
