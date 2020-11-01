import 'package:flutter/material.dart';
import 'package:flutter_donut_ui/constants/constants.dart' as CONSTANT;
import 'package:flutter_donut_ui/pages/details_page/bottom_nav.dart';
import 'package:flutter_donut_ui/pages/details_page/ingredients.dart';

class ItemDetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: CONSTANT.ICONCOLOR,
            size: 30.0,
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.favorite_border,
              color: CONSTANT.ICONCOLOR,
              size: 30.0,
            ),
            onPressed: () {},
          )
        ],
      ),
      bottomSheet: BottomNavigation(),
      body: Container(
        padding: EdgeInsets.only(
          top: 30.0,
        ),
        color: CONSTANT.BGCOLOR,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // Product image
            Center(
              child: Image.asset(
                "assets/images/donuts/3.png",
                width: width * 0.65,
                fit: BoxFit.contain,
              ),
            ),

            SizedBox(
              height: 20.0,
            ),
            // Product information
            Container(
              width: width,
              padding: EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                color: CONSTANT.PRODUCTBGCOLOR,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    "Ingredients",
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      IngredientsDetails(),
                      IngredientsDetails(),
                      IngredientsDetails(),
                      IngredientsDetails(),
                    ],
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    "Details",
                    style: TextStyle(
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    "Lorem ipsum doler set emit. Lorem ipsum doler set emit. Lorem ipsum doler set emit.",
                    style: TextStyle(
                      fontSize: 18.0,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
