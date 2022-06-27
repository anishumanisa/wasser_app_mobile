import 'dart:async';

import 'package:wasser_app/core/base/base_view_model.dart';
import 'package:wasser_app/ui/pages/cash_flow/model/saldo_response.dart';
import 'package:wasser_app/ui/pages/cash_flow_manage/repository/cash_flow_manage_repository.dart';

class CashFlowManageViewModel extends BaseViewModel {
  final CashFlowManageRepository _cashFlowManageRepository;

  CashFlowManageViewModel({CashFlowManageRepository? cashFlowManageRepository})
      : _cashFlowManageRepository =
            cashFlowManageRepository ?? CashFlowManageRepository();

  var _cashFlowList = SaldoResponse();
  SaldoResponse get cashFlowList => _cashFlowList;

  int _income = 0;
  int _outcome = 0;

  int get income => _income;
  int get outcome => _outcome;

  Future<SaldoResponse> cashFlow() async {
    isLoading = true;

    var response = await _cashFlowManageRepository.cashFlow();

    _cashFlowList = response;

    isLoading = false;
    return response;
  }

  @override
  FutureOr<void> init() async {
    await cashFlow();
  }
}
