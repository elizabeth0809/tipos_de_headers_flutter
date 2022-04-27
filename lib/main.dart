import 'package:flutter/material.dart';
import 'package:tipos_de_headers/src/pages/headers_pages.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        home: HeadersPage());
  }
}
