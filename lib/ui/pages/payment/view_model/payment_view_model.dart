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

  List<Data> _foundUsers = [];

  List<Data> get foundUsers => _foundUsers;

  Future<PaymentListResponse> getPaymentList() async {
    isLoading = true;

    var response = await _paymentRepository.transactionList();

    _paymentList = response;

    _foundUsers = _paymentList.data ?? [];

    isLoading = false;
    return response;
  }

  void search(String enteredKeyword) {
    List<Data> results = [];
    if (enteredKeyword.isEmpty) {
      // if the search field is empty or only contains white-space, we'll display all users
      results = _paymentList.data ?? [];
    } else {
      results = (_paymentList.data ?? [])
          .where((user) => (user.name ?? '')
              .toLowerCase()
              .contains(enteredKeyword.toLowerCase()))
          .toList();
      // we use the toLowerCase() method to make it case-insensitive
    }

    // Refresh the UI
    _foundUsers = results;

    notifyListeners();
  }

  @override
  FutureOr<void> init() async {
    await getPaymentList();
  }
}
