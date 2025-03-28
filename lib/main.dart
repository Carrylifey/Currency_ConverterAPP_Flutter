import 'package:currency_converter/currency_converter_cupertino_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:currency_converter/currency_converter_material_page.dart';

void main() {
  runApp(const MyCupertinoApp());
}

//types of widgets
// 1.StatelessWidget
// 2.StatefulWidget

//State

//1. Material Design
//2. Cupertino Design

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CurrencyConverterMaterialPage(),
    );
  }
}

class MyCupertinoApp extends StatelessWidget {
  const MyCupertinoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      home: CurrencyConverterCupertinopage(),
    );
  }
}
