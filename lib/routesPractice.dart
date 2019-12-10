import 'package:flutter/material.dart';
import 'package:unsilenced_voice/pages/Home.dart';
import 'package:unsilenced_voice/pages/Communites.dart';
import 'package:unsilenced_voice/pages/About.dart';
//import 'package:flutter_flat_app/screens/Login/index.dart';
//import 'package:flutter_flat_app/screens/SignUp/index.dart';
//import 'package:flutter_flat_app/screens/Home/index.dart';
//import 'package:flutter_flat_app/theme/style.dart';

class Routes {

  var routes = <String, WidgetBuilder>{
    "/BrowseCommunities": (BuildContext context) => new BrowseCommunitiesScreen(),
    "/HomePage": (BuildContext context) => new HomeScreen(),
    "/AboutPage": (BuildContext context) => new AboutScreen(),
  };

  Routes() {
    runApp(new MaterialApp(
      title: "Flutter Flat App",
      home: new HomeScreen(),
//      theme: appTheme,
      routes: routes,
    ));
  }
}