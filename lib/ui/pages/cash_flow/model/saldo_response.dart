import 'dart:convert';

T? asT<T>(dynamic value) {
  if (value is T) {
    return value;
  }
  return null;
}

class SaldoResponse {
  SaldoResponse({
    this.meta,
    this.data,
  });

  factory SaldoResponse.fromJson(Map<String, dynamic> json) {
    final List<Data>? data = json['data'] is List ? <Data>[] : null;
    if (data != null) {
      for (final dynamic item in json['data']!) {
        if (item != null) {
          data.add(Data.fromJson(asT<Map<String, dynamic>>(item)!));
        }
      }
    }
    return SaldoResponse(
      meta: json['meta'] == null
          ? null
          : Meta.fromJson(asT<Map<String, dynamic>>(json['meta'])!),
      data: data,
    );
  }

  Meta? meta;
  List<Data>? data;

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
    this.id,
    this.type,
    this.jumlah,
    this.saldoAwal,
    this.saldoAkhir,
    this.keterangan,
    this.tglInput,
    this.userId,
    this.createdAt,
    this.updatedAt,
    this.user,
  });

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        id: asT<int?>(json['id']),
        type: asT<String?>(json['type']),
        jumlah: asT<int?>(json['jumlah']),
        saldoAwal: asT<int?>(json['saldo_awal']),
        saldoAkhir: asT<int?>(json['saldo_akhir']),
        keterangan: asT<String?>(json['keterangan']),
        tglInput: asT<String?>(json['tgl_input']),
        userId: asT<int?>(json['user_id']),
        createdAt: asT<String?>(json['created_at']),
        updatedAt: asT<String?>(json['updated_at']),
        user: json['user'] == null
            ? null
            : User.fromJson(asT<Map<String, dynamic>>(json['user'])!),
      );

  int? id;
  String? type;
  int? jumlah;
  int? saldoAwal;
  int? saldoAkhir;
  String? keterangan;
  String? tglInput;
  int? userId;
  String? createdAt;
  String? updatedAt;
  User? user;

  @override
  String toString() {
    return jsonEncode(this);
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id,
        'type': type,
        'jumlah': jumlah,
        'saldo_awal': saldoAwal,
        'saldo_akhir': saldoAkhir,
        'keterangan': keterangan,
        'tgl_input': tglInput,
        'user_id': userId,
        'created_at': createdAt,
        'updated_at': updatedAt,
        'user': user,
      };
}

class User {
  User({
    this.id,
    this.name,
    this.email,
    this.noPelanggan,
    this.emailVerifiedAt,
    this.noTelp,
    this.alamat,
    this.jk,
    this.tglLahir,
    this.avatar,
    this.role,
    this.wilayahId,
    this.createdAt,
    this.updatedAt,
  });

  factory User.fromJson(Map<String, dynamic> json) => User(
        id: asT<int?>(json['id']),
        name: asT<String?>(json['name']),
        email: asT<String?>(json['email']),
        noPelanggan: asT<int?>(json['no_pelanggan']),
        emailVerifiedAt: asT<String?>(json['email_verified_at']),
        noTelp: asT<String?>(json['no_telp']),
        alamat: asT<String?>(json['alamat']),
        jk: asT<String?>(json['jk']),
        tglLahir: asT<String?>(json['tgl_lahir']),
        avatar: asT<String?>(json['avatar']),
        role: asT<String?>(json['role']),
        wilayahId: asT<int?>(json['wilayah_id']),
        createdAt: asT<String?>(json['created_at']),
        updatedAt: asT<String?>(json['updated_at']),
      );

  int? id;
  String? name;
  String? email;
  int? noPelanggan;
  String? emailVerifiedAt;
  String? noTelp;
  String? alamat;
  String? jk;
  String? tglLahir;
  String? avatar;
  String? role;
  int? wilayahId;
  String? createdAt;
  String? updatedAt;

  @override
  String toString() {
    return jsonEncode(this);
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id,
        'name': name,
        'email': email,
        'no_pelanggan': noPelanggan,
        'email_verified_at': emailVerifiedAt,
        'no_telp': noTelp,
        'alamat': alamat,
        'jk': jk,
        'tgl_lahir': tglLahir,
        'avatar': avatar,
        'role': role,
        'wilayah_id': wilayahId,
        'created_at': createdAt,
        'updated_at': updatedAt,
      };
}
