import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Instagram extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple[500],
          title: Text('Instagram'),
          centerTitle: true,
          elevation: 0,
        ),
        body: WebView(
          initialUrl: "https://www.instagram.com/hussam_frhat"
        )
    );
  }
}
