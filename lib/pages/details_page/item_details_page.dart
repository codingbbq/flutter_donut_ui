import 'package:flutter/material.dart';
import 'package:flutter_donut_ui/constants/constants.dart' as CONSTANT;
import 'package:flutter_donut_ui/models/product.model.dart';
import 'package:flutter_donut_ui/pages/details_page/bottom_nav.dart';
import 'package:flutter_donut_ui/pages/details_page/ingredients.dart';

class ItemDetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ProductList arguments = ModalRoute.of(context).settings.arguments;
    print(arguments.id);
    final width = MediaQuery.of(context).size.width;
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
      bottomSheet: BottomNavigation(price: arguments.price),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          padding: EdgeInsets.only(
            top: 30.0,
            bottom: 150.0,
          ),
          color: CONSTANT.BGCOLOR,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              // Product image
              Center(
                child: Image.asset(
                  arguments.img,
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
                padding: EdgeInsets.only(
                  top: 30.0,
                  left: 20.0,
                  right: 20.0,
                  bottom: 50.0,
                ),
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
                        for (var i = 0; i < arguments.ingredients.length; i++)
                          IngredientsDetails(
                              index: i, stats: arguments.ingredients[i]),
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
                      arguments.details,
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
      ),
    );
  }
}
