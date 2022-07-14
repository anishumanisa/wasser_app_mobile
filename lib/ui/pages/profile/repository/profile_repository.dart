import 'package:wasser_app/core/utils/share_pref.dart';

class ProfileRepository {
  String? get userMember => SharePref.getUser();

  void clearCache() {
    SharePref.setUser('');
    SharePref.setToken('');
  }
}
