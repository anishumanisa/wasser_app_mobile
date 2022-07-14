import 'dart:async';

import 'package:wasser_app/core/base/base_view_model.dart';
import 'package:wasser_app/ui/pages/customer_detail/model/delete_user_response.dart';
import 'package:wasser_app/ui/pages/customer_detail/repository/customer_detail_repository.dart';

class CustomerDetailViewModel extends BaseViewModel {
  final CustomerDetailRepository _customerDetailRepository;

  CustomerDetailViewModel(
      {required CustomerDetailRepository customerDetailRepository})
      : _customerDetailRepository = customerDetailRepository;

  Future<DeleteUserResponse> deleteUser({required String id}) async {
    isLoading = true;

    var response = await _customerDetailRepository.deleteUser(id: id);

    isLoading = false;
    return response;
  }

  @override
  FutureOr<void> init() async {}
}
