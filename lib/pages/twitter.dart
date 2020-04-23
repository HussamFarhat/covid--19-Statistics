import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Twitter extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple[500],
          title: Text('Twitter'),
          centerTitle: true,
          elevation: 0,
        ),
        body: WebView(
          initialUrl: "https://www.Twitter.com/Hussam_Farhat",
          javascriptMode: JavascriptMode.unrestricted,
        )
    );
  }
}
