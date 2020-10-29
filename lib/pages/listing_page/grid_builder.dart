import 'package:flutter/material.dart';
import 'package:flutter_donut_ui/models/donutgrid.model.dart';

class DonutGridBuilder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: GridView.builder(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          itemCount: donutList.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 20.0,
            mainAxisSpacing: 30.0,
          ),
          itemBuilder: (BuildContext context, int index) => Container(
            color: Colors.yellow,
            child: Text(
              donutList[index].name,
            ),
          ),
        ),
      ),
    );
  }
}
