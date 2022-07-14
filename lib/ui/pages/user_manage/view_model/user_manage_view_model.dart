import 'dart:async';

import 'package:flutter/material.dart';
import 'package:wasser_app/core/base/base_view_model.dart';
import 'package:wasser_app/ui/pages/user_manage/model/create_user_role_response.dart';
import 'package:wasser_app/ui/pages/user_manage/model/wilayah_response.dart'
    as wilayah;
import 'package:wasser_app/ui/pages/user_manage/repository/user_manage_repository.dart';

class UserManageViewModel extends BaseViewModel {
  final UserManageRepository _userManageRepository;

  final TextEditingController _nameController;
  final TextEditingController _emailController;
  final TextEditingController _noHpController;
  final TextEditingController _dateController;
  final TextEditingController _addressController;
  final TextEditingController _passwordController;
  final TextEditingController _regionController;

  UserManageViewModel({
    required UserManageRepository userManageRepository,
    required TextEditingController nameController,
    required TextEditingController emailController,
    required TextEditingController noHpController,
    required TextEditingController dateController,
    required TextEditingController addressController,
    required TextEditingController passwordController,
    required TextEditingController regionController,
  })  : _userManageRepository = userManageRepository,
        _nameController = nameController,
        _emailController = emailController,
        _noHpController = noHpController,
        _dateController = dateController,
        _addressController = addressController,
        _regionController = regionController,
        _passwordController = passwordController;

  var _users = CreateUserRoleResponse();
  CreateUserRoleResponse get users => _users;

  late String? _selectedGender;
  final List<Gender> _listGender = [
    Gender(title: 'Pria', code: 'male'),
    Gender(title: 'Wanita', code: 'female'),
  ];

  String? get selectedGender => _selectedGender;
  List<Gender> get listGender => _listGender;

  void selectGender(String code) {
    _selectedGender = code;
    notifyListeners();
  }

  /// Wilayah
  wilayah.Wilayah? _selectedWilayah;
  late List<wilayah.Wilayah> _listWilayah = [];

  var _selectedWilayahBottomSheet;

  List<wilayah.Wilayah> get listWilayah => _listWilayah;

  wilayah.Wilayah? get selectedWilayahBottomSheet =>
      _selectedWilayahBottomSheet;

  bool get isActiveWilayahBottomSheetButton =>
      _selectedWilayahBottomSheet != null;

  void setupWilayahBottomSheet() {
    _selectedWilayahBottomSheet = _selectedWilayah;
    notifyListeners();
  }

  void selectWilayahBottomSheet({required wilayah.Wilayah wilayah}) {
    _selectedWilayahBottomSheet = wilayah;

    notifyListeners();
  }

  Future<void> setWilayah() async {
    _selectedWilayah = _selectedWilayahBottomSheet;

    _regionController.text = selectedWilayahBottomSheet?.namaWilayah ?? '';

    notifyListeners();
  }

  /// End of Wilayah
  Future<wilayah.WilayahResponse> getWilayah() async {
    isLoading = true;

    var response = await _userManageRepository.getWilayah();

    _listWilayah = response.data ?? [];

    isLoading = false;
    return response;
  }

  Future<CreateUserRoleResponse> createUserRole() async {
    isLoading = true;

    var response = await _userManageRepository.createUserRole(
      name: _nameController.text,
      email: _emailController.text,
      noHp: _noHpController.text,
      gender: _selectedGender ?? 'male',
      date: _dateController.text,
      address: _addressController.text,
      region: _selectedWilayah?.id ?? 0,
      password: _passwordController.text,
      noCustomer: 0,
      role: 'admin',
    );

    _users = response;

    isLoading = false;
    return response;
  }

  @override
  FutureOr<void> init() async {
    await getWilayah();
    selectGender('male');
  }
}
