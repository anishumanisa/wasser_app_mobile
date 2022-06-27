import 'dart:async';

import 'package:flutter/material.dart';
import 'package:wasser_app/core/base/base_view_model.dart';
import 'package:wasser_app/ui/pages/register/model/register_response.dart';
import 'package:wasser_app/ui/pages/register/repository/register_repository.dart';

class RegisterViewModel extends BaseViewModel {
  final RegisterRepository _registerRepository;

  final TextEditingController _emailController;
  final TextEditingController _passwordController;

  RegisterViewModel(
      {required TextEditingController emailController,
      required TextEditingController passwordController,
      RegisterRepository? registerRepository})
      : _registerRepository = registerRepository ?? RegisterRepository(),
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

  Future<RegisterResponse> register() async {
    isLoading = true;

    var email = emailController;
    var password = passwordController;

    var response = await _registerRepository.register(
        "name",
        "email",
        "password",
        "telp",
        "alamat",
        "jk",
        "tgl_lahir",
        "avatar",
        "role",
        0,
        0);

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
