import 'package:flutter/material.dart';

class MainModel extends ChangeNotifier {
  String naokText = 'naok';

  void changeKboyText() {
    naokText = 'naokdayo!!!';
    notifyListeners();
  }
}
