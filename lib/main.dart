import 'package:flutter/material.dart';
import 'package:tipos_de_headers/src/pages/animacion_pages.dart';
import 'package:tipos_de_headers/src/pages/graficas_circulares_page.dart';
//impor'package:tipos_de_headers/src/labs/circular_progress_page.dart't';
import 'package:tipos_de_headers/src/pages/headers_pages.dart';
import 'package:tipos_de_headers/src/pages/slideshow_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        home: SlideshowPage());
  }
}
