import 'package:flutter/material.dart';
import 'package:vinted_description_generator/home.dart';

const primaryBlue = Color.fromARGB(255, 27, 40, 69);
const secondaryGreen = Color.fromARGB(255, 44, 136, 87);
const myGrey = Color.fromARGB(255, 81, 91, 110);

class MyAppPage extends StatelessWidget {
  const MyAppPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: primaryBlue,
      body: SingleChildScrollView(
        child: Column(children: const [
          TitleSection(),
          InputForm(
            text1: '✏️ name of product',
          ),
          InputForm(
            text1: '🌈 color of product',
          ),
          InputForm(
            text1: '♻ state of product',
          ),
          InputForm(
            text1: '💰 price of product',
          ),
          InputForm(
            text1: '📏 size of product',
          ),
          InputForm(
            text1: '🚻️ sexe of product',
          ),
          InputForm(
            text1: '™️️ brand of product',
          ),
          InputForm(
            text1: '🌎 origin of product',
          ),
          MySeparator(),
          SizedBox(height: 20),
          ButtonMake(),
          SizedBox(height: 100),
        ]),
      ),
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
                text: ' Make',
                style: TextStyle(
                    fontFamily: 'Lato',
                    fontWeight: FontWeight.w700,
                    fontSize: 36,
                    color: secondaryGreen),
                children: <TextSpan>[
                  TextSpan(
                      text: ' your ',
                      style: TextStyle(
                          fontFamily: 'Lato',
                          fontWeight: FontWeight.w700,
                          fontSize: 36,
                          color: Colors.white)),
                  TextSpan(
                      text: '\ndescription',
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

class InputForm extends StatelessWidget {
  final String text1;

  const InputForm({Key? key, required this.text1}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 350,
      height: 100,
      child: Column(
        children: <Widget>[
          TextField(
            style: const TextStyle(color: Colors.white),
            decoration: InputDecoration(
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: myGrey,
                ),
              ),
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: secondaryGreen,
                ),
              ),
              labelStyle: const TextStyle(
                color: Colors.white,
              ),
              hintText: text1,
              hintStyle: const TextStyle(
                color: myGrey,
                fontFamily: 'Lato',
                fontWeight: FontWeight.w100,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ButtonMake extends StatelessWidget {
  const ButtonMake({Key? key}) : super(key: key);

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
          child: const Text("Make Description"),
        ));
  }
}
