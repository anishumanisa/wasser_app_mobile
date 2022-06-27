import 'dart:convert';

T? asT<T>(dynamic value) {
  if (value is T) {
    return value;
  }
  return null;
}

class RegisterResponse {
  RegisterResponse({
    this.meta,
    this.data,
  });

  factory RegisterResponse.fromJson(Map<String, dynamic> json) =>
      RegisterResponse(
        meta: json['meta'] == null
            ? null
            : Meta.fromJson(asT<Map<String, dynamic>>(json['meta'])!),
        data: json['data'] == null
            ? null
            : Data.fromJson(asT<Map<String, dynamic>>(json['data'])!),
      );

  Meta? meta;
  Data? data;

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

class Data {
  Data({
    this.user,
    this.accessToken,
    this.tokenType,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        user: json['user'] == null
            ? null
            : User.fromJson(asT<Map<String, dynamic>>(json['user'])!),
        accessToken: asT<String?>(json['access_token']),
        tokenType: asT<String?>(json['token_type']),
      );

  User? user;
  String? accessToken;
  String? tokenType;

  @override
  String toString() {
    return jsonEncode(this);
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
        'user': user,
        'access_token': accessToken,
        'token_type': tokenType,
      };
}

class User {
  User({
    this.name,
    this.email,
    this.noPelanggan,
    this.noTelp,
    this.alamat,
    this.jk,
    this.tglLahir,
    this.avatar,
    this.role,
    this.wilayahId,
    this.updatedAt,
    this.createdAt,
    this.id,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
        name: asT<String?>(json['name']),
        email: asT<String?>(json['email']),
        noPelanggan: asT<String?>(json['no_pelanggan']),
        noTelp: asT<String?>(json['no_telp']),
        alamat: asT<String?>(json['alamat']),
        jk: asT<String?>(json['jk']),
        tglLahir: asT<String?>(json['tgl_lahir']),
        avatar: asT<String?>(json['avatar']),
        role: asT<String?>(json['role']),
        wilayahId: asT<String?>(json['wilayah_id']),
        updatedAt: asT<String?>(json['updated_at']),
        createdAt: asT<String?>(json['created_at']),
        id: asT<int?>(json['id']),
      );

  String? name;
  String? email;
  String? noPelanggan;
  String? noTelp;
  String? alamat;
  String? jk;
  String? tglLahir;
  String? avatar;
  String? role;
  String? wilayahId;
  String? updatedAt;
  String? createdAt;
  int? id;

  @override
  String toString() {
    return jsonEncode(this);
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
        'name': name,
        'email': email,
        'no_pelanggan': noPelanggan,
        'no_telp': noTelp,
        'alamat': alamat,
        'jk': jk,
        'tgl_lahir': tglLahir,
        'avatar': avatar,
        'role': role,
        'wilayah_id': wilayahId,
        'updated_at': updatedAt,
        'created_at': createdAt,
        'id': id,
      };
}
