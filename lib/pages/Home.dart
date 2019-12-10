import "package:flutter/material.dart";
import 'package:unsilenced_voice/functions/quoteSelector.dart';
import 'dart:math';
import 'package:unsilenced_voice/designs/Buttons.dart';

//stateful widget can rebuild itself
class HomeScreen extends StatefulWidget {
  const HomeScreen({ Key key }) : super(key: key);

  @override
  HomeScreenState createState() => new HomeScreenState();

}

//just the homepage
class HomeScreenState extends State<HomeScreen>{
  BuildContext context;
  final GlobalKey<FormState> formKey = new GlobalKey<FormState>();
  ExactAssetImage logo = new ExactAssetImage("assets/images/logo.jpg");

  String randomNumber() {
    var rng = new Random();
//    change the number when you start adding more quotes
    String quote = new PickQuote().randomQuote(rng.nextInt(4));
    print(quote);
    return quote;
  }

  void _handleSubmitted() {
//    final FormState form = formKey.currentState;
    Navigator.pushNamed(context, "/BrowseCommunities");
  }

  void _browseCommunities() {
    Navigator.pushNamed(context, "/BrowseCommunities");
  }

  void _AboutPage() {
    Navigator.pushNamed(context, "/AboutPage");
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    this.context = context;
    final Size screenSize = MediaQuery
        .of(context)
        .size;
    return new Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: <Widget>[
              Container(
              height: screenSize.height / 5,
                child: new Row(
                  // crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    new GestureDetector(
                      onTap: _handleSubmitted,
                      child: new Image(
                        image: logo,
                        width: (screenSize.width < 500)
                            ? 120.0
                            : (screenSize.width / 4) + 12.0,
                        height: screenSize.height / 4 + 20,
                      ),
                    ),
                    SizedBox(width: 13),
                    Flexible(
                      child: new Text(randomNumber(),
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Rouge'),
                      ),
                    )
                  ]
                ),
              ),
            Container(
              child: new Row(
                children: <Widget>[
                  RoundedButton(
                    buttonName: "About",
                    onTap: _AboutPage,
                    width: screenSize.width / 4,
                    height: 50.0,
                    bottomMargin: 10.0,
                    borderWidth: 0.0,
                    buttonColor: Colors.grey,
                    textColor: Colors.yellow,
                  ),
                  RoundedButton(
                    buttonName: "Contact",
                    onTap: _browseCommunities,
                    width: screenSize.width / 4,
                    height: 50.0,
                    bottomMargin: 10.0,
                    borderWidth: 0.0,
                    buttonColor: Colors.grey,
                    textColor: Colors.yellow,
                  ),
                ],
              ),
            ),
            Container (
              child: GestureDetector(
                onTap: _browseCommunities,
                child: RoundedButton(
                  buttonName: "Browse Communities",
                  onTap: _browseCommunities,
                  width: screenSize.width / 2,
                  height: 50.0,
                  bottomMargin: 10.0,
                  borderWidth: 0.0,
                  buttonColor: Colors.grey,
                  textColor: Colors.yellow,
                ),
              ),
            ),
            Container(
              child: Center(
                child: new Text("Home",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            )
        ],
      ),
    );
  }
}