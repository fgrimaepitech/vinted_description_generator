import 'package:flutter/material.dart';
import 'home.dart';

void main() {
  runApp(const MyApp());
}

const primaryBlue = Color.fromARGB(255, 27, 40, 69);
const secondaryGreen = Color.fromARGB(255, 44, 136, 87);

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Vinted Description Generator',
      home: MyHomePage(),
    );
  }
}
