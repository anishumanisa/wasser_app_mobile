import 'dart:convert';

T? asT<T>(dynamic value) {
  if (value is T) {
    return value;
  }
  return null;
}

class InputCustomerResponse {
  InputCustomerResponse({
    this.meta,
    this.data,
  });

  factory InputCustomerResponse.fromJson(Map<String, dynamic> json) =>
      InputCustomerResponse(
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
    this.wilayah,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        name: asT<String?>(json['name']),
        email: asT<String?>(json['email']),
        noPelanggan: asT<int?>(json['no_pelanggan']),
        noTelp: asT<String?>(json['no_telp']),
        alamat: asT<String?>(json['alamat']),
        jk: asT<String?>(json['jk']),
        tglLahir: asT<String?>(json['tgl_lahir']),
        avatar: asT<String?>(json['avatar']),
        role: asT<String?>(json['role']),
        wilayahId: asT<int?>(json['wilayah_id']),
        updatedAt: asT<String?>(json['updated_at']),
        createdAt: asT<String?>(json['created_at']),
        id: asT<int?>(json['id']),
        wilayah: json['wilayah'] == null
            ? null
            : Wilayah.fromJson(asT<Map<String, dynamic>>(json['wilayah'])!),
      );

  String? name;
  String? email;
  int? noPelanggan;
  String? noTelp;
  String? alamat;
  String? jk;
  String? tglLahir;
  String? avatar;
  String? role;
  int? wilayahId;
  String? updatedAt;
  String? createdAt;
  int? id;
  Wilayah? wilayah;

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
        'wilayah': wilayah,
      };
}

class Wilayah {
  Wilayah({
    this.id,
    this.namaWilayah,
    this.createdAt,
    this.updatedAt,
  });

  factory Wilayah.fromJson(Map<String, dynamic> json) => Wilayah(
        id: asT<int?>(json['id']),
        namaWilayah: asT<String?>(json['nama_wilayah']),
        createdAt: asT<String?>(json['created_at']),
        updatedAt: asT<String?>(json['updated_at']),
      );

  int? id;
  String? namaWilayah;
  String? createdAt;
  String? updatedAt;

  @override
  String toString() {
    return jsonEncode(this);
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id,
        'nama_wilayah': namaWilayah,
        'created_at': createdAt,
        'updated_at': updatedAt,
      };
}

class Gender {
  Gender({
    this.title,
    this.code,
  });

  factory Gender.fromJson(Map<String, dynamic> json) => Gender(
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
