import 'package:flutter/material.dart';
import 'package:flutter_donut_ui/models/donutgrid.model.dart';

class DonutGridBuilder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.only(
          top: 20.0,
        ),
        child: GridView.builder(
          padding: EdgeInsets.only(
            top: 20,
            bottom: 30.0,
          ),
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemCount: donutList.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 20.0,
            mainAxisSpacing: 30.0,
            childAspectRatio: 0.70,
          ),
          itemBuilder: (BuildContext context, int index) => Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: Colors.white,
            ),
            child: Column(
              children: <Widget>[
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      vertical: 10.0,
                      horizontal: 20.0,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.pink,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20.0),
                        bottomLeft: Radius.circular(20.0),
                      ),
                    ),
                    child: Text(
                      donutList[index].price.toString(),
                    ),
                  ),
                ),

                SizedBox(
                  height: 10.0,
                ),

                // Donut picture
                Align(
                  alignment: Alignment.center,
                  child: Image.asset(
                    donutList[index].img,
                    fit: BoxFit.contain,
                    width: 100,
                    height: 100,
                  ),
                ),

                SizedBox(
                  height: 10.0,
                ),

                // Donut name
                Text(
                  donutList[index].name,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),
                  textAlign: TextAlign.center,
                ),

                // Donut category
                Text(
                  donutList[index].category,
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.grey,
                  ),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(
                        Icons.favorite_border,
                        size: 25.0,
                      ),
                      onPressed: () {},
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        right: 10.0,
                      ),
                      child: Text(
                        donutList[index].rating.toString(),
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
