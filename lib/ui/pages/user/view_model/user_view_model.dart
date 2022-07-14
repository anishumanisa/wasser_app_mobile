import 'dart:async';

import 'package:wasser_app/core/base/base_view_model.dart';
import 'package:wasser_app/ui/pages/user/model/user_list_response.dart';
import 'package:wasser_app/ui/pages/user/repository/user_respository.dart';

class UserViewModel extends BaseViewModel {
  final UserRepository _userRepository;

  UserViewModel({required UserRepository userRepository})
      : _userRepository = userRepository;

  var _userList = UserListResponse();
  UserListResponse get userList => _userList;
  final role = 'admin';
  Future<UserListResponse> getUserList() async {
    isLoading = true;

    var response = await _userRepository.userList(role: role);

    _userList = response;
    isLoading = false;
    return response;
  }

  @override
  FutureOr<void> init() async {
    await getUserList();
  }
}
