import 'package:flutter/material.dart';
import 'package:flutter_donut_ui/pages/listing_page/listing_page.dart';

void main() {
  runApp(DonutUI());
}

class DonutUI extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Donut UI',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
        canvasColor: Colors.transparent,
      ),
      home: DonutListingPage(),
    );
  }
}
