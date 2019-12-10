import "package:flutter/material.dart";
import 'package:unsilenced_voice/functions/quoteSelector.dart';
import 'dart:math';
import 'package:unsilenced_voice/designs/Buttons.dart';

//stateful widget can rebuild itself
class AboutScreen extends StatelessWidget {
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

//  void _handleSubmitted() {
//    final FormState form = formKey.currentState;
//    Navigator.pushNamed(context, "/BrowseCommunities");
//  }

  void _browseCommunities() {
    Navigator.pushNamed(context, "/BrowseCommunities");
  }

  @override
  Widget build(BuildContext context) {

    // TODO: implement build
    this.context = context;
    final Size screenSize = MediaQuery
        .of(context)
        .size;
//    we need to add a scroll view here
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
//                      onTap: _handleSubmitted,
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
            margin: const EdgeInsets.only(bottom: 10.0),
            child: Center(
              child: new Text('Unsilenced Voice is a social network. It was built by patriots that were personally affected by online censorship in the name of "Political Correctness" and agenda. We stand for liberty, diversity of thought, and freedom of speech, without politically motivated censorship.',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 10.0),
            child: Center(
              child: new Text('"I disapprove of what you say, but I will defend to the death your right to say it" -The Friends of Voltaire',
                style: TextStyle(color: Colors.white,
                fontFamily: 'Rouge'),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 10.0),
            child: Center(
              child: new Text('Unsilenced Voice merges the content submission and commenting format of Reddit and the social aspects of Twitter, Facebook, Instagram (and in the near future YouTube) to bring you a single social platform to express yourself freely. ',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 10.0),
            child: Center(
              child: new Text('"Give me the liberty to know, to utter, and to argue freely according to conscience, above all liberties." -John Milton',
                style: TextStyle(color: Colors.white,
                    fontFamily: 'Rouge'),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 10.0),
            child: Center(
              child: new Text('You have the liberty to create real (with the option to verify your profile) or anonymous profiles. Anonymity protects your freedom of speech from offended parties who may seek to retaliate. The different profiles you may create are kept separate from each other and your privacy is protected.',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 10.0),
            child: Center(
              child: new Text('"Everyone has the right to freedom of opinion and expression; this right includes freedom to hold opinions without interference and to seek, receive and impart information and ideas through any media and regardless of frontiers." -United Nations',
                style: TextStyle(color: Colors.white,
                    fontFamily: 'Rouge'),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 10.0),
            child: new Text('Our Values and Guidelines:',
              style: TextStyle(color: Colors.yellow,
                  fontSize: 40.0,
                  fontFamily: 'Rouge'),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 10.0),
            child: Center(
              child: new Text('First Amendment to the United States Constitution:',
                style: TextStyle(color: Colors.yellow,
                    fontFamily: 'Rouge'),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 10.0),
            child: Center(
              child: new Text('"Congress shall make no law respecting an establishment of religion, or prohibiting the free exercise thereof; or abridging the freedom of speech, or of the press; or the right of the people peaceably to assemble, and to petition the Government for a redress of grievances."Freedom of Speech, Diversity of Thought and Opinion are the backbone of liberty. Incitement to break laws and/or harm others is NOT Freedom of Speech. ',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }

}