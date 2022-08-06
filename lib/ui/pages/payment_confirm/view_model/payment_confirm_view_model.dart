import 'dart:async';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:wasser_app/core/base/base_view_model.dart';
import 'package:wasser_app/ui/pages/payment_confirm/model/create_transaction_response.dart';
import 'package:wasser_app/ui/pages/payment_confirm/model/payment_confirm_response.dart';
import 'package:wasser_app/ui/pages/payment_confirm/repository/payment_confirm_repository.dart';

class PaymentConfirmViewModel extends BaseViewModel {
  final PaymentConfirmRepository _paymentConfirmRepository;
  final String _paymentId;
  final TextEditingController _amountController;
  final TextEditingController _noteController;

  PaymentConfirmViewModel(
      {required TextEditingController amountController,
      required TextEditingController noteController,
      required PaymentConfirmRepository paymentConfirmRepository,
      required String paymentId})
      : _paymentConfirmRepository = paymentConfirmRepository,
        _paymentId = paymentId,
        _amountController = amountController,
        _noteController = noteController;

  var _paymentConfirm = PaymentConfirmResponse();
  PaymentConfirmResponse get paymentConfirm => _paymentConfirm;

  late String? _selectedPaymentMethod;
  final List<PaymentMethod> _listPaymentMethod = [
    PaymentMethod(title: 'Bank Transfer', code: 'transfer'),
    PaymentMethod(title: 'Manual', code: 'manual'),
  ];

  String? get selectedPaymentMethod => _selectedPaymentMethod;
  List<PaymentMethod> get listPaymentMethod => _listPaymentMethod;

  void selectPaymentMethod(String code) {
    _selectedPaymentMethod = code;
    notifyListeners();
  }

  int? _penalty = 0;

  int? get penalty => _penalty;

  void setPenalty(String date) {
    var _createDate = DateTime.parse(date);

    var date1 = DateFormat.M().format(_createDate);
    var date2 = DateFormat.M().format(DateTime.now());

    var diff = (int.parse(date2) - int.parse(date1));

    var penaltyFee = 5000;

    if (diff > 1) {
      _penalty = diff * penaltyFee;
    }

    notifyListeners();
  }

  Future<PaymentConfirmResponse> getPaymentConfirm() async {
    isLoading = true;

    var response = await _paymentConfirmRepository.getPaymentConfirm(
        paymentId: _paymentId);

    _paymentConfirm = response;

    setPenalty(response.data?.tagihanBulan ?? '');

    isLoading = false;
    return response;
  }

  Future<CreateTransactionResponse> createTransaction() async {
    isLoading = true;

    var amount = int.parse(_amountController.text);
    var note = _noteController.text;
    var paymentData = _paymentConfirm.data;
    var response = await _paymentConfirmRepository.createTransaction(
        total: paymentData?.jumlahBayar ?? 0,
        bayar: amount,
        denda: penalty ?? 0,
        pembayaranId: paymentData?.id ?? 0,
        method: selectedPaymentMethod ?? 'manual',
        keterangan: note,
        userId: paymentData?.userId ?? 0);

    isLoading = false;
    return response;
  }

  @override
  FutureOr<void> init() async {
    await getPaymentConfirm();
    selectPaymentMethod('manual');
  }
}
