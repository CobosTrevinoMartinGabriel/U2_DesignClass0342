import 'package:flutter/material.dart';
import 'package:cobos/pajo.dart';

void main() => runApp(const Init());

class Init extends StatelessWidget {
  const Init({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Act  6 Diseño UI utilizando una clase _Cobos0342",
      home: pajo(),
    );
  }
}
