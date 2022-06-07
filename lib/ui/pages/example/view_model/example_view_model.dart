import 'package:flutter/material.dart';
import 'package:wasser_app/ui/pages/example/model/user_response.dart';
import 'package:wasser_app/ui/pages/example/repository/example_repository.dart';

class ExampleViewModel extends ChangeNotifier {
  final _repository = ExampleRepository();

  UserResponse user = UserResponse();

  Future<void> fetchExample() async {
    _repository.example().then((value) {
      user = value;
      notifyListeners();
      return value;
    });
  }
}
