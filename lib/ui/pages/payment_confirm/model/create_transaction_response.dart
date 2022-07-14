import 'dart:convert';

T? asT<T>(dynamic value) {
  if (value is T) {
    return value;
  }
  return null;
}

class CreateTransactionResponse {
  CreateTransactionResponse({
    this.meta,
    this.data,
  });

  factory CreateTransactionResponse.fromJson(Map<String, dynamic> json) =>
      CreateTransactionResponse(
        meta: json['meta'] == null
            ? null
            : Meta.fromJson(asT<Map<String, dynamic>>(json['meta'])!),
        data: json['data'] == null
            ? null
            : TransactionData.fromJson(
                asT<Map<String, dynamic>>(json['data'])!),
      );

  Meta? meta;
  TransactionData? data;

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

class TransactionData {
  TransactionData({
    this.total,
    this.bayar,
    this.kembali,
    this.denda,
    this.noInvoice,
    this.keterangan,
    this.status,
    this.method,
    this.adminFee,
    this.tglTransaksi,
    this.pembayaranId,
    this.userId,
    this.updatedAt,
    this.createdAt,
    this.id,
    this.pembayaran,
    this.user,
  });

  factory TransactionData.fromJson(Map<String, dynamic> json) =>
      TransactionData(
        total: asT<int?>(json['total']),
        bayar: asT<int?>(json['bayar']),
        kembali: asT<int?>(json['kembali']),
        denda: asT<int?>(json['denda']),
        noInvoice: asT<String?>(json['no_invoice']),
        keterangan: asT<String?>(json['keterangan']),
        status: asT<bool?>(json['status']),
        method: asT<String?>(json['method']),
        adminFee: asT<int?>(json['admin_fee']),
        tglTransaksi: asT<String?>(json['tgl_transaksi']),
        pembayaranId: asT<int?>(json['pembayaran_id']),
        userId: asT<int?>(json['user_id']),
        updatedAt: asT<String?>(json['updated_at']),
        createdAt: asT<String?>(json['created_at']),
        id: asT<int?>(json['id']),
        pembayaran: json['pembayaran'] == null
            ? null
            : Pembayaran.fromJson(
                asT<Map<String, dynamic>>(json['pembayaran'])!),
        user: json['user'] == null
            ? null
            : User.fromJson(asT<Map<String, dynamic>>(json['user'])!),
      );

  int? total;
  int? bayar;
  int? kembali;
  int? denda;
  String? noInvoice;
  String? keterangan;
  bool? status;
  String? method;
  int? adminFee;
  String? tglTransaksi;
  int? pembayaranId;
  int? userId;
  String? updatedAt;
  String? createdAt;
  int? id;
  Pembayaran? pembayaran;
  User? user;

  @override
  String toString() {
    return jsonEncode(this);
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
        'total': total,
        'bayar': bayar,
        'kembali': kembali,
        'denda': denda,
        'no_invoice': noInvoice,
        'keterangan': keterangan,
        'status': status,
        'method': method,
        'admin_fee': adminFee,
        'tgl_transaksi': tglTransaksi,
        'pembayaran_id': pembayaranId,
        'user_id': userId,
        'updated_at': updatedAt,
        'created_at': createdAt,
        'id': id,
        'pembayaran': pembayaran,
        'user': user,
      };
}

class Pembayaran {
  Pembayaran({
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

  factory Pembayaran.fromJson(Map<String, dynamic> json) => Pembayaran(
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
        emailVerifiedAt: asT<Object?>(json['email_verified_at']),
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
  Object? emailVerifiedAt;
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
