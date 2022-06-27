import 'package:wasser_app/core/utils/share_pref.dart';

class MainRepository {
  String? get userMember => SharePref.getUser();
}
