import 'package:flutter/material.dart';

class NavProvider extends ChangeNotifier {
  final List<int> _selectedNav = [0];

  List<int> get selctedNav => _selectedNav;

  void updateNavList(int selectedNav) {
    // Only notifiy the Listener when a new nav is selected.
    // It should not exists in the _selectedNav list.

    if (!_selectedNav.contains(selectedNav)) {
      _selectedNav[0] = selectedNav;
      notifyListeners();
    }
  }
}
