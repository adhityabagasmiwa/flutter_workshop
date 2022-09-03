import 'package:flutter/material.dart';
import 'package:flutter_provider/home.dart';
import 'package:flutter_provider/provider/text_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Provider',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ChangeNotifierProvider<TextProvider>(
        create: (BuildContext context) {
          return TextProvider();
        },
        child: const HomePage(),
      ),
    );
  }
}
