import 'package:flutter/material.dart';
import 'package:flutter_donut_ui/pages/details_page/item_details_page.dart';
import 'package:flutter_donut_ui/pages/listing_page/listing_page.dart';
import 'package:flutter_donut_ui/provider/navigation.provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => NavProvider(),
      child: FoodAppUI(),
    ),
  );
}

class FoodAppUI extends StatelessWidget {
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
      initialRoute: '/',
      routes: {
        '/': (BuildContext context) => ProductListingPage(),
        '/item': (BuildContext context) => ItemDetailsPage()
      },
    );
  }
}
