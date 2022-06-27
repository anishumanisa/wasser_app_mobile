import 'dart:async';

import 'package:wasser_app/core/base/base_view_model.dart';
import 'package:wasser_app/ui/pages/cash_flow/model/saldo_response.dart';
import 'package:wasser_app/ui/pages/cash_flow/repository/cash_flow_repository.dart';

class CashFlowViewModel extends BaseViewModel {
  final CashFlowRepository _cashFlowRepository;

  CashFlowViewModel({CashFlowRepository? cashFlowRepository})
      : _cashFlowRepository = cashFlowRepository ?? CashFlowRepository();

  var _cashFlowList = SaldoResponse();
  SaldoResponse get cashFlowList => _cashFlowList;

  int _income = 0;
  int _outcome = 0;

  int get income => _income;
  int get outcome => _outcome;

  Future<SaldoResponse> cashFlow() async {
    isLoading = true;

    var response = await _cashFlowRepository.cashFlow();

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

    _cashFlowList = response;
    isLoading = false;
    return response;
  }

  @override
  FutureOr<void> init() async {
    await cashFlow();
  }
}
