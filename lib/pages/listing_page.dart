import 'package:flutter/material.dart';
import 'package:flutter_donut_ui/utils/custom_paint.dart';

class DonutListingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.menu),
          iconSize: 30.0,
          color: Color(0xFF2F2F2F),
        ),
      ),
      body: Container(
        child: CustomPaint(
          painter: DonutUICustomBG(),
          child: Column(
            children: [],
          ),
        ),
      ),
    );
  }
}
