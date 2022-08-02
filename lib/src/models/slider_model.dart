import 'package:flutter/material.dart';

class SliderModel with ChangeNotifier {
  dynamic _currentPage = 0.0;
  dynamic get currentPage => this._currentPage;

  set currentPage(dynamic pagina) {
    this._currentPage = pagina;

    notifyListeners();
  }
}
