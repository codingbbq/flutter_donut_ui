import 'package:flutter/material.dart';
import 'package:flutter_donut_ui/models/donutgrid.model.dart';

class IngredientsDetails extends StatelessWidget {
  final IngredientStats stats;

  const IngredientsDetails({Key key, this.stats}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 20.0,
        horizontal: 10.0,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30.0),
      ),
      child: Column(
        children: <Widget>[
          Text(
            stats.name,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20.0,
            ),
          ),
          SizedBox(
            height: 5.0,
          ),
          Text("a gram"),
          SizedBox(
            height: 10.0,
          ),
          Container(
            padding: EdgeInsets.all(15.0),
            decoration: BoxDecoration(
              color: Colors.pink,
              shape: BoxShape.circle,
            ),
            child: Text(
              stats.value.toString() + "%",
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
