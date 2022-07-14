import 'dart:async';

import 'package:flutter/material.dart';
import 'package:wasser_app/core/base/base_view_model.dart';
import 'package:wasser_app/ui/pages/input_meter/model/create_payment_response.dart';
import 'package:wasser_app/ui/pages/input_meter/repository/input_meter_repository.dart';

class InputMeterViewModel extends BaseViewModel {
  final InputMeterRepository _inputMeterRepository;
  final TextEditingController _meteranAkhirController;
  final TextEditingController _meteranSekarangController;
  final TextEditingController _kubikasiController;
  final int _userId;

  InputMeterViewModel(
      {required InputMeterRepository inputMeterRepository,
      required TextEditingController meteranAkhirController,
      required TextEditingController meteranSekarangController,
      required TextEditingController kubikasiController,
      required int userId})
      : _userId = userId,
        _inputMeterRepository = inputMeterRepository,
        _meteranAkhirController = meteranAkhirController,
        _meteranSekarangController = meteranSekarangController,
        _kubikasiController = kubikasiController;

  String? get meteranAkhirValue => _meteranAkhirController.text.trim();

  String? get meteranSekarangValue => _meteranSekarangController.text.trim();

  String? get kubikasiValue => _kubikasiController.text.trim();

  var _createPayment = CreatePaymentResponse();
  CreatePaymentResponse get createPayment => _createPayment;

  Future<CreatePaymentResponse> inputMeter() async {
    isLoading = true;

    var response = await _inputMeterRepository.inputMeter(
        meteranAwal: int.parse(meteranAkhirValue ?? '0'),
        meteranAkhir: int.parse(meteranSekarangValue ?? '0'),
        keterangan: '-',
        status: 'unpaid',
        userId: _userId);

    _createPayment = response;

    isLoading = false;
    return response;
  }

  @override
  FutureOr<void> init() async {}
}
