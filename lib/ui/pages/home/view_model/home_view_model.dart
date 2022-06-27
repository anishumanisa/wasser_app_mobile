import 'dart:async';
import 'dart:convert';

import 'package:wasser_app/core/base/base_view_model.dart';
import 'package:wasser_app/ui/pages/home/model/saldo_response.dart' as saldo;
import 'package:wasser_app/ui/pages/home/repository/home_repository.dart';
import 'package:wasser_app/ui/pages/transaction/model/transaksi_list_response.dart';

class HomeViewModel extends BaseViewModel {
  final HomeRepository _homeRepository;

  HomeViewModel({required HomeRepository homeRepository})
      : _homeRepository = homeRepository;

  var _transactionList = ListTransaksiResponse();
  ListTransaksiResponse get transactionList => _transactionList;

  Future<ListTransaksiResponse> getTransactionList() async {
    isLoading = true;

    var response = await _homeRepository.transactionList();

    _transactionList = response;
    isLoading = false;
    return response;
  }

  int _income = 0;
  int _outcome = 0;

  int get income => _income;
  int get outcome => _outcome;

  Future<saldo.SaldoResponse> cashFlow() async {
    isLoading = true;

    var response = await _homeRepository.cashFlow();

    _income = response.data
            ?.where((element) => element.type == "in")
            .map((m) => m.jumlah)
            .reduce((a, b) => (a ?? 0) + (b ?? 0)) ??
        0;

    _outcome = response.data
            ?.where((element) => element.type == "out")
            .map((m) => m.jumlah)
            .reduce((a, b) => (a ?? 0) + (b ?? 0)) ??
        0;

    isLoading = false;
    return response;
  }

  var _user = User();
  User get user => _user;

  Future<void> getUserMember() async {
    var userMember = _homeRepository.userMember;
    _user = User.fromJson(json.decode(userMember ?? ''));
  }

  @override
  FutureOr<void> init() async {
    await getTransactionList();
    await cashFlow();
    await getUserMember();
  }
}
