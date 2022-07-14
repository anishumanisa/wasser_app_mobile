import 'dart:async';
import 'dart:convert';

import 'package:wasser_app/core/base/base_view_model.dart';
import 'package:wasser_app/ui/pages/login/model/login_response.dart';
import 'package:wasser_app/ui/pages/profile/repository/profile_repository.dart';

class ProfileViewModel extends BaseViewModel {
  final ProfileRepository _profileRepository;

  ProfileViewModel({required ProfileRepository profileRepository})
      : _profileRepository = profileRepository;

  var _user = User();
  User get user => _user;

  Future<void> getUserMember() async {
    var userMember = _profileRepository.userMember;
    _user = User.fromJson(json.decode(userMember ?? ''));
  }

  Future<void> logout() async {
    _profileRepository.clearCache();
  }

  @override
  FutureOr<void> init() async {
    await getUserMember();
  }
}
