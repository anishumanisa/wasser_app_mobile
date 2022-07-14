import 'dart:async';

import 'package:wasser_app/core/base/base_view_model.dart';
import 'package:wasser_app/ui/pages/user_detail/model/delete_user_response.dart';
import 'package:wasser_app/ui/pages/user_detail/repository/user_detail_repository.dart';

class UserDetailViewModel extends BaseViewModel {
  final UserDetailRepository _userDetailRepository;

  UserDetailViewModel({required UserDetailRepository userDetailRepository})
      : _userDetailRepository = userDetailRepository;

  Future<DeleteUserResponse> deleteUser({required String id}) async {
    isLoading = true;

    var response = await _userDetailRepository.deleteUser(id: id);

    isLoading = false;
    return response;
  }

  @override
  FutureOr<void> init() async {}
}
