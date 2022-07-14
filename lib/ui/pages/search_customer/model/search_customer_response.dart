import 'dart:convert';

T? asT<T>(dynamic value) {
  if (value is T) {
    return value;
  }
  return null;
}

class SearchCustomerResponse {
  SearchCustomerResponse({
    this.meta,
    this.data,
  });

  factory SearchCustomerResponse.fromJson(Map<String, dynamic> json) =>
      SearchCustomerResponse(
        meta: json['meta'] == null
            ? null
            : Meta.fromJson(asT<Map<String, dynamic>>(json['meta'])!),
        data: json['data'] == null
            ? null
            : DataCustomer.fromJson(asT<Map<String, dynamic>>(json['data'])!),
      );

  Meta? meta;
  DataCustomer? data;

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

class DataCustomer {
  DataCustomer({
    this.user,
    this.payment,
  });

  factory DataCustomer.fromJson(Map<String, dynamic> json) => DataCustomer(
        user: json['user'] == null
            ? null
            : User.fromJson(asT<Map<String, dynamic>>(json['user'])!),
        payment: json['payment'] == null
            ? null
            : Payment.fromJson(asT<Map<String, dynamic>>(json['payment'])!),
      );

  User? user;
  Payment? payment;

  @override
  String toString() {
    return jsonEncode(this);
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
        'user': user,
        'payment': payment,
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
    this.wilayah,
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
        wilayah: json['wilayah'] == null
            ? null
            : Wilayah.fromJson(asT<Map<String, dynamic>>(json['wilayah'])!),
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
  Wilayah? wilayah;

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

class Payment {
  Payment({
    this.id,
    this.jumlahBayar,
    this.meteranAwal,
    this.meteranAkhir,
    this.kubikasi,
    this.tagihanBulan,
    this.keterangan,
    this.status,
    this.userId,
    this.createdAt,
    this.updatedAt,
  });

  factory Payment.fromJson(Map<String, dynamic> json) => Payment(
        id: asT<int?>(json['id']),
        jumlahBayar: asT<int?>(json['jumlah_bayar']),
        meteranAwal: asT<int?>(json['meteran_awal']),
        meteranAkhir: asT<int?>(json['meteran_akhir']),
        kubikasi: asT<int?>(json['kubikasi']),
        tagihanBulan: asT<String?>(json['tagihan_bulan']),
        keterangan: asT<String?>(json['keterangan']),
        status: asT<String?>(json['status']),
        userId: asT<int?>(json['user_id']),
        createdAt: asT<String?>(json['created_at']),
        updatedAt: asT<String?>(json['updated_at']),
      );

  int? id;
  int? jumlahBayar;
  int? meteranAwal;
  int? meteranAkhir;
  int? kubikasi;
  String? tagihanBulan;
  String? keterangan;
  String? status;
  int? userId;
  String? createdAt;
  String? updatedAt;

  @override
  String toString() {
    return jsonEncode(this);
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id,
        'jumlah_bayar': jumlahBayar,
        'meteran_awal': meteranAwal,
        'meteran_akhir': meteranAkhir,
        'kubikasi': kubikasi,
        'tagihan_bulan': tagihanBulan,
        'keterangan': keterangan,
        'status': status,
        'user_id': userId,
        'created_at': createdAt,
        'updated_at': updatedAt,
      };
}
