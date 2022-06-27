import 'dart:async';

import 'package:wasser_app/core/base/base_view_model.dart';
import 'package:wasser_app/ui/pages/payment/model/payment_list_response.dart';
import 'package:wasser_app/ui/pages/payment/repository/payment_repository.dart';

class PaymentViewModel extends BaseViewModel {
  final PaymentRepository _paymentRepository;

  PaymentViewModel({required PaymentRepository paymentRepository})
      : _paymentRepository = paymentRepository;

  var _paymentList = PaymentListResponse();
  PaymentListResponse get paymentList => _paymentList;

  Future<PaymentListResponse> getPaymentList() async {
    isLoading = true;

    var response = await _paymentRepository.transactionList();

    _paymentList = response;

    isLoading = false;
    return response;
  }

  @override
  FutureOr<void> init() async {
    await getPaymentList();
  }
}
