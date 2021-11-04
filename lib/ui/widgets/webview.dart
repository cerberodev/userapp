import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class WebViewPage extends StatelessWidget {
  const WebViewPage({required this.text, Key? key}) : super(key: key);

  final String text;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(text),
      ),
      body: WebView(
        initialUrl: 'https://flutter.dev',
        javascriptMode: JavascriptMode.unrestricted,
      ),
    );
  }
}
