import 'package:flutter/material.dart';
import 'package:unsilenced_voice/functions/quoteSelector.dart';
import 'dart:math';

//stateful widget can rebuild itself
class BrowseCommunitiesScreen extends StatefulWidget {
  const BrowseCommunitiesScreen({ Key key }) : super(key: key);

  @override
  BrowseCommunitiesScreenState createState() => new BrowseCommunitiesScreenState();

}

//just the communities page
class BrowseCommunitiesScreenState extends State<BrowseCommunitiesScreen> {
  BuildContext context;
//  final GlobalKey<FormState> formKey = new GlobalKey<FormState>();
  ScrollController scrollController = new ScrollController();
  ExactAssetImage logo = new ExactAssetImage("assets/images/logo.jpg");

  String randomNumber() {
    var rng = new Random();
//    change the number when you start adding more quotes
    String quote = new PickQuote().randomQuote(rng.nextInt(4));
    print(quote);
    return quote;
  }

  onPressed(String routeName) {
    Navigator.of(context).pushNamed(routeName);
  }

  void _handleSubmitted() {
//    final FormState form = formKey.currentState;
    Navigator.pushNamed(context, "/HomePage");
  }

  @override
  Widget build(BuildContext context) {
    this.context = context;
    final Size screenSize = MediaQuery
        .of(context)
        .size;
    return new MaterialApp(
      home: new Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: <Widget>[
            Container(
              height: screenSize.height / 5,
              child: new Row(
                //                        crossAxisAlignment: CrossAxisAlignment.center,
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
            Expanded(
              child: ListView.builder(
                itemCount: 30,
                itemBuilder: (context, index) {
                  return ListTile(
                      title: Text("Index : ${index + 1}",
                        style: TextStyle(
                            color: Colors.yellow),
                      )
                  );
                },
              ),
            ),
          ],
        ),
      )
    );
//    return new MaterialApp(
//      home: new Scaffold(
//          key: _scaffoldKey,
//          backgroundColor: Colors.black,
//          body: new SingleChildScrollView(
//              controller: scrollController,
//                child: new Container(
//                  padding: new EdgeInsets.all(16.0),
//  //                decoration: new BoxDecoration(image: backgroundImage),
//  //                figure out how to make the image go to the homescreen
//                  child: new Column(
//                    children: <Widget>[
//                      new Container(
//                        height: screenSize.height / 4,
//                        child: new Row(
//  //                        crossAxisAlignment: CrossAxisAlignment.center,
//                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                          children: <Widget>[
//                            new GestureDetector(
//                              onTap: _handleSubmitted,
//                              child: new Image(
//                                image: logo,
//                                width: (screenSize.width < 500)
//                                    ? 120.0
//                                    : (screenSize.width / 4) + 12.0,
//                                height: screenSize.height / 4 + 20,
//                              ),
//                            ),
//                            SizedBox(width: 13),
//                            Flexible(
//                              child: new Text(randomNumber(),
//                                style: TextStyle(
//                                    color: Colors.white,
//                                    fontFamily: 'Rouge'),
//                              ),
//                            )
//                          ]
//                        ),
//                      ),
////                      Flexible(
////                        ListView.builder(
////                          itemCount: 30,
////                          itemBuilder: (context, index) {
////                            return ListTile(
////                                title: Text("Index : $index")
////                            );
////                          },
////                        ),
////                      ),
//                    ],
//                  ),
//              )
//          )
//      ),
//    );
  }
}