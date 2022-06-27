import 'dart:async';

import 'package:flutter/material.dart';
import 'package:wasser_app/core/base/base_view_model.dart';
import 'package:wasser_app/core/utils/share_pref.dart';
import 'package:wasser_app/ui/pages/login/model/login_response.dart';
import 'package:wasser_app/ui/pages/login/repository/login_repository.dart';

class LoginViewModel extends BaseViewModel {
  final LoginRepository _loginRepository;

  final TextEditingController _emailController;
  final TextEditingController _passwordController;

  LoginViewModel(
      {required TextEditingController emailController,
      required TextEditingController passwordController,
      LoginRepository? loginRepository})
      : _loginRepository = loginRepository ?? LoginRepository(),
        _emailController = emailController,
        _passwordController = passwordController;

  String? get emailController => _emailController.text.trim();

  String? get passwordController => _passwordController.text.trim();

  bool _buttonSubmit = false;

  bool get buttonSubmit => _buttonSubmit;

  void buttonSubmitListener() {
    var maxLength = 25;
    // var _valuePassword = _.text.hasRegexNewPassword() &&
    //     _confirmNewPasswordController.text.hasRegexNewPassword() &&
    //     _newPasswordController.text.length <= maxLength &&
    //     !_newPasswordController.text.contains(' ');
    //
    // var _valuePasswordMatch =
    //     _newPasswordController.text == _confirmNewPasswordController.text;
    //
    // _buttonSubmit = _oldPasswordController.text.isNotNullEmpty &&
    //     _newPasswordController.text.isNotNullEmpty &&
    //     _confirmNewPasswordController.text.isNotNullEmpty &&
    //     _valuePassword &&
    //     _valuePasswordMatch;

    notifyListeners();
  }

  String? get userMember => SharePref.getUser();
  Future<LoginResponse> login() async {
    isLoading = true;

    var email = emailController;
    var password = passwordController;

    var response = await _loginRepository.login(email ?? '', password ?? '');

    if (response.data != null && (response.meta?.status ?? false)) {
      _loginRepository.setToken(response.data?.accessToken);
      _loginRepository.setUserMember(response.data?.user.toString());

      // var tmp = User.fromJson(json.decode(userMember ?? ''));
      // print(tmp);
    }

    isLoading = false;
    return response;
  }

  @override
  FutureOr<void> init() {
    _emailController.addListener(buttonSubmitListener);
    _emailController.addListener(() {
      // validatorOldPassword(_oldPasswordValidatedController);
    });

    _passwordController.addListener(buttonSubmitListener);
    _passwordController.addListener(() {
      // validatorNewPassword(_newPasswordValidatedController);
    });
  }
}
