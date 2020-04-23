import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Telegram extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple[500],
          title: Text('Telegram'),
          centerTitle: true,
          elevation: 0,
        ),
        body: WebView(
          initialUrl: "https://www.t.me/hussamfarhat",
          javascriptMode: JavascriptMode.unrestricted,
        )
    );
  }
}
