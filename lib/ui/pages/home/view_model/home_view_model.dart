import 'dart:async';
import 'dart:convert';

import 'package:wasser_app/core/base/base_view_model.dart';
import 'package:wasser_app/ui/pages/home/model/list_transaksi_response.dart';
import 'package:wasser_app/ui/pages/home/model/saldo_response.dart' as saldo;
import 'package:wasser_app/ui/pages/home/repository/home_repository.dart';

class HomeViewModel extends BaseViewModel {
  final HomeRepository _homeRepository;

  HomeViewModel({required HomeRepository homeRepository})
      : _homeRepository = homeRepository;

  int _totalTransaction = 0;

  int get totalTransaction => _totalTransaction;

  var _transactionList = ListTransaksiResponse();
  ListTransaksiResponse get transactionList => _transactionList;

  Future<ListTransaksiResponse> getTransactionList() async {
    isLoading = true;

    var response = await _homeRepository.transactionList();

    _transactionList = response;
    _totalTransaction = response.data
            ?.map((m) => m.total)
            .reduce((a, b) => (a ?? 0) + (b ?? 0)) ??
        0;

    isLoading = false;
    return response;
  }

  int _income = 0;
  int _outcome = 0;

  int get income => _income;
  int get outcome => _outcome;

  Future<saldo.SaldoKasResponse> cashFlow() async {
    isLoading = true;

    var response = await _homeRepository.cashFlow();

    response.data?.forEach((element) {
      if (element.type == 'in') {
        _income = response.data
                ?.where((element) => element.type == "in")
                .map((m) => m.jumlah)
                .reduce((a, b) => (a ?? 0) + (b ?? 0)) ??
            0;
      } else if (_income == 0) {
        _income = 0;
      }

      if (element.type == 'out') {
        _outcome = response.data
                ?.where((element) => element.type == "out")
                .map((m) => m.jumlah)
                .reduce((a, b) => (a ?? 0) + (b ?? 0)) ??
            0;
      } else if (_outcome == 0) {
        _outcome = 0;
      }
    });

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
