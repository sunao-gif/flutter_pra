import 'package:flutter/cupertino.dart';

class MainModel extends ChangeNotifier {
  String kboyText = '直';

  void changeKboyText(){
    kboyText = 'kboy?';
    notifyListeners();
  }
}