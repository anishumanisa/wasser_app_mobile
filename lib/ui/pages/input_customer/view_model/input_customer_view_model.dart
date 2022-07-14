import 'dart:async';

import 'package:flutter/material.dart';
import 'package:wasser_app/core/base/base_view_model.dart';
import 'package:wasser_app/ui/pages/input_customer/model/input_customer_response.dart';
import 'package:wasser_app/ui/pages/input_customer/model/wilayah_response.dart'
    as wilayah;
import 'package:wasser_app/ui/pages/input_customer/repository/input_customer_repository.dart';

class InputCustomerViewModel extends BaseViewModel {
  final InputCustomerRepository _inputCustomerRepository;
  final TextEditingController _nameController;
  final TextEditingController _emailController;
  final TextEditingController _noHpController;
  final TextEditingController _dateController;
  final TextEditingController _addressController;
  final TextEditingController _passwordController;
  final TextEditingController _customerNoController;
  final TextEditingController _genderController;
  final TextEditingController _regionController;

  InputCustomerViewModel({
    required InputCustomerRepository inputCustomerRepository,
    required TextEditingController nameController,
    required TextEditingController emailController,
    required TextEditingController noHpController,
    required TextEditingController dateController,
    required TextEditingController addressController,
    required TextEditingController passwordController,
    required TextEditingController customerNoController,
    required TextEditingController genderController,
    required TextEditingController regionController,
  })  : _inputCustomerRepository = inputCustomerRepository,
        _nameController = nameController,
        _emailController = emailController,
        _noHpController = noHpController,
        _dateController = dateController,
        _addressController = addressController,
        _passwordController = passwordController,
        _customerNoController = customerNoController,
        _genderController = genderController,
        _regionController = regionController;

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

  Future<wilayah.WilayahResponse> getWilayah() async {
    isLoading = true;

    var response = await _inputCustomerRepository.getWilayah();

    _listWilayah = response.data ?? [];

    isLoading = false;
    return response;
  }

  Future<InputCustomerResponse> inputCustomer() async {
    isLoading = true;

    var response = await _inputCustomerRepository.inputCustomer(
      name: _nameController.text,
      email: _emailController.text,
      noHp: _noHpController.text,
      gender: _selectedGender ?? 'male',
      date: _dateController.text,
      address: _addressController.text,
      region: selectedWilayahBottomSheet?.id ?? 0,
      password: _passwordController.text,
      noCustomer: int.parse(_customerNoController.text),
      role: 'customer',
    );

    isLoading = false;
    return response;
  }

  @override
  FutureOr<void> init() async {
    await getWilayah();
    selectGender('male');
  }
}
