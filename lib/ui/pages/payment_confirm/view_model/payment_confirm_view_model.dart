import 'dart:async';

import 'package:wasser_app/core/base/base_view_model.dart';
import 'package:wasser_app/ui/pages/payment_confirm/model/payment_confirm_response.dart';
import 'package:wasser_app/ui/pages/payment_confirm/repository/payment_confirm_repository.dart';

class PaymentConfirmViewModel extends BaseViewModel {
  final PaymentConfirmRepository _paymentConfirmRepository;
  final String _paymentId;

  PaymentConfirmViewModel(
      {required PaymentConfirmRepository paymentConfirmRepository,
      required String paymentId})
      : _paymentConfirmRepository = paymentConfirmRepository,
        _paymentId = paymentId;

  var _paymentConfirm = PaymentConfirmResponse();
  PaymentConfirmResponse get paymentConfirm => _paymentConfirm;

  late String? _selectedPaymentMethod;
  final List<PaymentMethod> _listPaymentMethod = [
    PaymentMethod(title: 'Bank Transfer', code: '1'),
    PaymentMethod(title: 'Manual', code: '2'),
  ];

  String? get selectedPaymentMethod => _selectedPaymentMethod;
  List<PaymentMethod> get listPaymentMethod => _listPaymentMethod;

  void selectGender(String code) {
    _selectedPaymentMethod = code;
    notifyListeners();
  }

  Future<PaymentConfirmResponse> getPaymentConfirm() async {
    isLoading = true;

    var response =
        await _paymentConfirmRepository.paymentConfirm(paymentId: _paymentId);

    _paymentConfirm = response;

    isLoading = false;
    return response;
  }

  @override
  FutureOr<void> init() async {
    await getPaymentConfirm();
    selectGender('2');
  }
}
