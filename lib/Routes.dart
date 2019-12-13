import 'package:unsilenced_voice/inAppBrowser.dart';
import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class Routes {

  final flutterWebViewPlugin = FlutterWebviewPlugin();

  var routes = <String, WidgetBuilder> {
    "/widget" : (BuildContext context) => new MyHomePage()
  };

  Routes() {
    runApp(new MaterialApp(
      title: "Flutter Flat App",
      home: new MyHomePage(),
//      theme: appTheme,
      routes: routes,
    ));
  }
}