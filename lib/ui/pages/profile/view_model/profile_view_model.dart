import 'dart:async';
import 'dart:convert';

import 'package:wasser_app/core/base/base_view_model.dart';
import 'package:wasser_app/ui/pages/profile/repository/profile_repository.dart';
import 'package:wasser_app/ui/pages/transaction/model/transaksi_list_response.dart';

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

  @override
  FutureOr<void> init() async {
    await getUserMember();
  }
}
