import 'package:alurabank/screens/home.dart';
import 'package:alurabank/theme/my_theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Alubank());
}

class Alubank extends StatelessWidget {
  const Alubank({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Alubank",
      theme: MyTheme,
      home: const Home(),
    );
  }
}