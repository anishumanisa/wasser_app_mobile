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

  List<Data> _foundUsers = [];

  List<Data> get foundUsers => _foundUsers;

  Future<ListTransaksiResponse> getTransactionList() async {
    isLoading = true;

    var response = await _transactionRepository.transactionList();

    _transactionList = response;

    _foundUsers = _transactionList.data ?? [];

    isLoading = false;
    return response;
  }

  void search(String enteredKeyword) {
    List<Data> results = [];
    if (enteredKeyword.isEmpty) {
      // if the search field is empty or only contains white-space, we'll display all users
      results = _transactionList.data ?? [];
    } else {
      results = (_transactionList.data ?? [])
          .where((user) => (user.user?.name ?? '')
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
    await getTransactionList();
  }
}
