import 'package:flutter/material.dart';
import 'package:flutter_donut_ui/models/navigation.model.dart';

class HeaderNavigation extends StatefulWidget {
  @override
  _HeaderNavigationState createState() => _HeaderNavigationState();
}

class _HeaderNavigationState extends State<HeaderNavigation> {
  List<int> _selectedNavItem = [0];

  void _selected(item) {
    if (!_selectedNavItem.contains(item)) {
      print(_selectedNavItem);
      setState(() {
        _selectedNavItem = [item];
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      child: ListView.separated(
        shrinkWrap: true,
        itemCount: navigationList.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, item) {
          return GestureDetector(
            onTap: () {
              _selected(item);
            },
            child: Container(
              decoration: _selectedNavItem.contains(item)
                  ? BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          color: Color(0xFF404040),
                          width: 2.0,
                        ),
                      ),
                    )
                  : BoxDecoration(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(
                    _selectedNavItem.contains(item)
                        ? navigationList[item].selectedImg
                        : navigationList[item].unselectedImg,
                    fit: BoxFit.cover,
                    width: 50,
                    height: 50,
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    navigationList[item].name,
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.normal,
                      color: _selectedNavItem.contains(item)
                          ? Colors.black
                          : Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
        separatorBuilder: (BuildContext context, item) {
          return SizedBox(
            width: 20.0,
          );
        },
      ),
    );
  }
}
