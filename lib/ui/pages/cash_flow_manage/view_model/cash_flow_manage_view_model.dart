import 'dart:async';

import 'package:flutter/material.dart';
import 'package:wasser_app/core/base/base_view_model.dart';
import 'package:wasser_app/ui/pages/cash_flow_manage/model/cash_flow_manage_response.dart';
import 'package:wasser_app/ui/pages/cash_flow_manage/model/type_model.dart';
import 'package:wasser_app/ui/pages/cash_flow_manage/repository/cash_flow_manage_repository.dart';

class CashFlowManageViewModel extends BaseViewModel {
  final CashFlowManageRepository _cashFlowManageRepository;

  final TextEditingController _jumlahController;
  final TextEditingController _keteranganController;

  CashFlowManageViewModel(
      {required TextEditingController jumlahController,
      required TextEditingController keteranganController,
      CashFlowManageRepository? cashFlowManageRepository})
      : _cashFlowManageRepository =
            cashFlowManageRepository ?? CashFlowManageRepository(),
        _jumlahController = jumlahController,
        _keteranganController = keteranganController;

  String _inputType = 'in';

  String? get inputType => _inputType;

  void setInputType(String type) {
    _inputType = type;
    notifyListeners();
  }

  Future<CashFlowManageResponse> createCashFlow() async {
    isLoading = true;

    var jumlah = int.parse(_jumlahController.text);
    var keterangan = _keteranganController.text;

    var response = await _cashFlowManageRepository.createCashFlow(
        type: selectedType, jumlah: jumlah, keterangan: keterangan);

    isLoading = false;
    return response;
  }

  late String? _selectedType;
  final List<Type> _listType = [
    Type(title: 'Masuk', code: 'in'),
    Type(title: 'Keluar', code: 'out'),
  ];

  String? get selectedType => _selectedType;
  List<Type> get listType => _listType;

  void selectType(String code) {
    _selectedType = code;
    notifyListeners();
  }

  @override
  FutureOr<void> init() async {
    selectType('in');
  }
}
