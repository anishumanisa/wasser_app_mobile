import 'dart:async';

import 'package:wasser_app/core/base/base_view_model.dart';
import 'package:wasser_app/ui/pages/payment_list/model/detail_pembayaran_response.dart';
import 'package:wasser_app/ui/pages/payment_list/repository/payment_list_repository.dart';

class PaymentListViewModel extends BaseViewModel {
  final PaymentListRepository _paymentListRepository;
  final String _userId;

  PaymentListViewModel(
      {required PaymentListRepository paymentListRepository,
      required String userId})
      : _paymentListRepository = paymentListRepository,
        _userId = userId;

  var _paymentList = ListDetailPembayaranResponse();
  ListDetailPembayaranResponse get paymentList => _paymentList;

  Future<ListDetailPembayaranResponse> getPaymentList() async {
    isLoading = true;

    var response = await _paymentListRepository.paymentList(id: _userId);

    _paymentList = response;

    isLoading = false;
    return response;
  }

  @override
  FutureOr<void> init() async {
    await getPaymentList();
  }
}
