import 'package:flutter/material.dart';
import 'package:flutter_donut_ui/pages/listing_page/grid_builder.dart';
import 'package:flutter_donut_ui/pages/listing_page/navigation.dart';
import 'package:flutter_donut_ui/utils/custom_paint.dart';

class DonutListingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

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
        actions: [
          Padding(
            padding: EdgeInsets.all(5.0),
            child: CircleAvatar(
              backgroundColor: Colors.orange,
              radius: 30.0,
            ),
          )
        ],
      ),
      body: CustomPaint(
        painter: DonutUICustomBG(),
        child: Container(
          padding: EdgeInsets.only(
            top: 100.0,
            left: 20.0,
            right: 20.0,
          ),
          width: width,
          height: height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "I want to Eat...",
                style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              HeaderNavigation(),
              SizedBox(
                height: 40.0,
              ),
              DonutGridBuilder(),
              SizedBox(
                height: 30.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
