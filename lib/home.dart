import 'package:flutter/material.dart';
import 'app.dart';

const primaryBlue = Color.fromARGB(255, 27, 40, 69);
const secondaryGreen = Color.fromARGB(255, 44, 136, 87);

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: primaryBlue,
      body: Column(children: const [
        TitleSection(),
        MySeparator(),
        MyDescription(),
        MyCardExample(),
        MySeparator(),
        ButtonStart(),
      ]),
    );
  }
}

class TitleSection extends StatelessWidget {
  const TitleSection({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 200,
        color: primaryBlue,
        padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Text.rich(
              TextSpan(
                text: 'Vinted',
                style: TextStyle(
                    fontFamily: 'Lato',
                    fontWeight: FontWeight.w700,
                    fontSize: 36,
                    color: secondaryGreen),
                children: <TextSpan>[
                  TextSpan(
                      text: ' Description ',
                      style: TextStyle(
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.w700,
                          fontSize: 36,
                          color: Colors.white)),
                  TextSpan(
                      text: '\n           Generator',
                      style: TextStyle(
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.w700,
                          fontSize: 36,
                          color: Colors.white)),
                ],
              ),
            ),
          ],
        ));
  }
}

class MySeparator extends StatelessWidget {
  const MySeparator({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Image.asset('assets/Separator.png'),
    );
  }
}

class MyCardExample extends StatelessWidget {
  const MyCardExample({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Image.asset('assets/CardExemple.png');
  }
}

class MyDescription extends StatelessWidget {
  const MyDescription({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 100,
        color: primaryBlue,
        padding: const EdgeInsets.fromLTRB(0, 0, 0, 40),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Text.rich(
              TextSpan(
                text: 'Automate',
                style: TextStyle(
                    fontFamily: 'Lato',
                    fontWeight: FontWeight.w700,
                    fontSize: 18,
                    color: secondaryGreen),
                children: <TextSpan>[
                  TextSpan(
                      text: ' your ',
                      style: TextStyle(
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.w700,
                          fontSize: 18,
                          color: Colors.white)),
                  TextSpan(
                      text: 'product descriptions\n',
                      style: TextStyle(
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.w700,
                          fontSize: 18,
                          color: secondaryGreen)),
                  TextSpan(
                      text: '                               on Vinted',
                      style: TextStyle(
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.w700,
                          fontSize: 18,
                          color: Colors.white)),
                ],
              ),
            ),
          ],
        ));
  }
}

class ButtonStart extends StatelessWidget {
  const ButtonStart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
        constraints: const BoxConstraints.tightFor(width: 163, height: 37),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            // background color
            primary: secondaryGreen,
            textStyle: const TextStyle(
                fontFamily: 'Lato', fontSize: 14, fontWeight: FontWeight.w100),
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const MyAppPage()),
            );
          },
          child: const Text("Let's get start"),
        ));
  }
}
