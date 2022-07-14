import 'dart:convert';

T? asT<T>(dynamic value) {
  if (value is T) {
    return value;
  }
  return null;
}

class Type {
  Type({
    this.title,
    this.code,
  });

  factory Type.fromJson(Map<String, dynamic> json) => Type(
        title: asT<String?>(json['error']),
        code: asT<String?>(json['code']),
      );

  String? title;
  String? code;

  @override
  String toString() {
    return jsonEncode(this);
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
        'title': title,
        'code': code,
      };
}
