import 'package:flutter/material.dart';

class NavProvider extends ChangeNotifier {
  // List to maintain which Nav is selected. On load keep 0th Nav as selected.
  // This list has 1 item because at any given time just one nav item will be selected.
  final List<int> _selectedNav = [0];

  // Get the item from the list.
  List<int> get selctedNav => _selectedNav;

  void updateNavList(int selectedNav) {
    // Only notifiy the Listener when a new nav is selected.
    // It should not exists in the _selectedNav list.

    if (!_selectedNav.contains(selectedNav)) {
      // Always update only the 0th list element.
      _selectedNav[0] = selectedNav;
      notifyListeners();
    }
  }
}
