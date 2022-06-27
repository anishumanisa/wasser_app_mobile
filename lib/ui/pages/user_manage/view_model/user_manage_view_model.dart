import 'dart:async';

import 'package:wasser_app/core/base/base_view_model.dart';
import 'package:wasser_app/ui/pages/user/model/user_list_response.dart';
import 'package:wasser_app/ui/pages/user_manage/repository/user_manage_repository.dart';

class UserManageViewModel extends BaseViewModel {
  final UserManageRepository _userManageRepository;

  UserManageViewModel({required UserManageRepository userManageRepository})
      : _userManageRepository = userManageRepository;

  var _transactionList = UserListResponse();
  UserListResponse get transactionList => _transactionList;

  Future<UserListResponse> getUserList() async {
    isLoading = true;

    var response = await _userManageRepository.userList();

    _transactionList = response;
    isLoading = false;
    return response;
  }

  @override
  FutureOr<void> init() async {
    await getUserList();
  }
}
