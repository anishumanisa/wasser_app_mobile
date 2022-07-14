import 'dart:convert';

T? asT<T>(dynamic value) {
  if (value is T) {
    return value;
  }
  return null;
}

class DeleteUserResponse {
  DeleteUserResponse({
    this.meta,
    this.data,
  });

  factory DeleteUserResponse.fromJson(Map<String, dynamic> json) =>
      DeleteUserResponse(
        meta: json['meta'] == null
            ? null
            : Meta.fromJson(asT<Map<String, dynamic>>(json['meta'])!),
        data: asT<bool?>(json['data']),
      );

  Meta? meta;
  bool? data;

  @override
  String toString() {
    return jsonEncode(this);
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
        'meta': meta,
        'data': data,
      };
}

class Meta {
  Meta({
    this.code,
    this.status,
    this.message,
  });

  factory Meta.fromJson(Map<String, dynamic> json) => Meta(
        code: asT<int?>(json['code']),
        status: asT<bool?>(json['status']),
        message: asT<String?>(json['message']),
      );

  int? code;
  bool? status;
  String? message;

  @override
  String toString() {
    return jsonEncode(this);
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
        'code': code,
        'status': status,
        'message': message,
      };
}
