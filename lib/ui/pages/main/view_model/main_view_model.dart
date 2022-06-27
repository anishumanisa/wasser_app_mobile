import 'dart:async';
import 'dart:convert';

import 'package:wasser_app/core/base/base_view_model.dart';
import 'package:wasser_app/ui/pages/cash_flow/model/saldo_response.dart';
import 'package:wasser_app/ui/pages/main/repository/main_repository.dart';

class MainViewModel extends BaseViewModel {
  final MainRepository _mainRepository;

  MainViewModel({MainRepository? mainRepository})
      : _mainRepository = mainRepository ?? MainRepository();

  User _user = User();

  User get user => _user;

  Future<void> userProfile() async {
    var userMember = _mainRepository.userMember;
    _user = User.fromJson(json.decode(userMember ?? ''));
    notifyListeners();
  }

  @override
  FutureOr<void> init() async {
    await userProfile();
  }
}
