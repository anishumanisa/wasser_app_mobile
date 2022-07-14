import 'dart:async';

import 'package:flutter/material.dart';
import 'package:wasser_app/core/base/base_view_model.dart';
import 'package:wasser_app/ui/pages/search_customer/model/search_customer_response.dart';
import 'package:wasser_app/ui/pages/search_customer/repository/search_customer_repository.dart';

class SearchCustomerViewModel extends BaseViewModel {
  final SearchCustomerRepository _searchCustomerRepository;
  final TextEditingController _customerNoController;

  SearchCustomerViewModel(
      {required SearchCustomerRepository searchCustomerRepository,
      required TextEditingController customerNoController})
      : _searchCustomerRepository = searchCustomerRepository,
        _customerNoController = customerNoController;

  var _searchCustomer = SearchCustomerResponse();
  SearchCustomerResponse get searchCustomer => _searchCustomer;

  Future<SearchCustomerResponse> getCustomer() async {
    isLoading = true;

    var response = await _searchCustomerRepository.searchCustomer(
        customerNo: int.parse(_customerNoController.text));

    _searchCustomer = response;

    isLoading = false;
    return response;
  }

  @override
  FutureOr<void> init() async {
    // DateTime a = DateTime.parse("2022-10-01T18:38:53.000000Z");
    // DateTime b = DateTime(2022, 04, 27);

    // var date1 = DateFormat.M().format(a);
    // var date2 = DateFormat.M().format(b);
    // print(int.parse(date1) - int.parse(date2));
  }
}
