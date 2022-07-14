import 'dart:async';

import 'package:wasser_app/core/base/base_view_model.dart';
import 'package:wasser_app/ui/pages/record/model/pencatatan_response.dart';
import 'package:wasser_app/ui/pages/record/repository/record_respository.dart';

class RecordViewModel extends BaseViewModel {
  final RecordRepository _recordRepository;

  RecordViewModel({
    required RecordRepository recordRepository,
  }) : _recordRepository = recordRepository;

  var _recordList = PencatatanResponse();
  PencatatanResponse get recordList => _recordList;

  Future<PencatatanResponse> getRecordList() async {
    isLoading = true;

    var response = await _recordRepository.recordList();

    _recordList = response;

    isLoading = false;
    return response;
  }

  @override
  FutureOr<void> init() async {
    await getRecordList();
  }
}
