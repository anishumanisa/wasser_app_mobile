import 'dart:async';

import 'package:wasser_app/core/base/base_view_model.dart';
import 'package:wasser_app/ui/pages/customer/model/customer_list_response.dart';
import 'package:wasser_app/ui/pages/customer/repository/customer_repository.dart';

class CustomerViewModel extends BaseViewModel {
  final CustomerRepository _customerRepository;

  CustomerViewModel({required CustomerRepository customerRepository})
      : _customerRepository = customerRepository;

  var _customerList = CustomerListResponse();
  CustomerListResponse get customerList => _customerList;

  List<User> _foundUsers = [];

  List<User> get foundUsers => _foundUsers;

  Future<CustomerListResponse> getCustomerList() async {
    isLoading = true;

    var response = await _customerRepository.customerList();

    _customerList = response;

    _foundUsers = _customerList.data ?? [];

    isLoading = false;
    return response;
  }

  void search(String enteredKeyword) {
    List<User> results = [];
    if (enteredKeyword.isEmpty) {
      // if the search field is empty or only contains white-space, we'll display all users
      results = _customerList.data ?? [];
    } else {
      results = (_customerList.data ?? [])
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
    await getCustomerList();
  }
}
