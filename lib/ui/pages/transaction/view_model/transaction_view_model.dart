import 'dart:async';

import 'package:wasser_app/core/base/base_view_model.dart';
import 'package:wasser_app/ui/pages/transaction/model/transaksi_list_response.dart';
import 'package:wasser_app/ui/pages/transaction/repository/transaction_repository.dart';

class TransactionViewModel extends BaseViewModel {
  final TransactionRepository _transactionRepository;

  TransactionViewModel({required TransactionRepository transactionRepository})
      : _transactionRepository = transactionRepository;

  var _transactionList = ListTransaksiResponse();
  ListTransaksiResponse get transactionList => _transactionList;

  Future<ListTransaksiResponse> getTransactionList() async {
    isLoading = true;

    var response = await _transactionRepository.transactionList();

    _transactionList = response;
    isLoading = false;
    return response;
  }

  @override
  FutureOr<void> init() async {
    await getTransactionList();
  }
}
