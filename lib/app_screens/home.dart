import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
            padding: EdgeInsets.all(40.0),
            alignment: Alignment.center,
            decoration: BoxDecoration(gradient: LinearGradient(colors: [
              Color(0x2e394aff),
              Color(0x192a45ff)
            ], begin: Alignment.bottomLeft, end: Alignment.topRight)),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Expanded(
                      child: MainTitle(),
                    )
                  ],
                ),
                Lotus(),
                StartButton()
              ],
            )));
  }
}

class MainTitle extends StatelessWidget {
  const MainTitle({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      "The Sacred Journey",
      textAlign: TextAlign.center,
      textDirection: TextDirection.ltr,
      style: TextStyle(
          decoration: TextDecoration.none,
          fontSize: 35.0,
          fontFamily: 'Raleway',
          fontWeight: FontWeight.w700,
          color: Color(0xD4C6FBFF)),
    );
  }
}

class Lotus extends StatelessWidget {
  const Lotus({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('images/blueLotus.png');
    Image image = Image(
      image: assetImage,
      width: 200.0,
      height: 150.0,
    );
    return Container(
      child: image,
      alignment: Alignment.bottomCenter,
    );
  }
}

class StartButton extends StatelessWidget {
  const StartButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 30.0),
        width: 250.0,
        height: 50.0,
        child: RaisedButton(
          onPressed: () => startJourney(context),
          color: Colors.deepPurple,
          child: Text(
            "Begin",
            style: TextStyle(
                fontSize: 30.0,
                color: Color(0xD4C6FBFF),
                fontFamily: 'Raleway',
                fontWeight: FontWeight.w700),
          ),
          elevation: 6.0,
        ));
  }

  void startJourney(BuildContext context) {
    var alertDialog = AlertDialog(
      title: Text(
        "The journey has begun",
        textAlign: TextAlign.center,
      ),
      content:
          Text("Settings up your adventure...", textAlign: TextAlign.center),
    );

    showDialog(
        context: context, builder: (BuildContext context) => alertDialog);
  }
}
