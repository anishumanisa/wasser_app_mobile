import 'dart:convert';

T? asT<T>(dynamic value) {
  if (value is T) {
    return value;
  }
  return null;
}

class UserResponse {
  UserResponse({
    this.id,
    this.name,
    this.username,
    this.email,
    this.address,
    this.phone,
    this.website,
    this.company,
  });

  factory UserResponse.fromJson(Map<String, dynamic> json) => UserResponse(
        id: asT<int?>(json['id']),
        name: asT<String?>(json['name']),
        username: asT<String?>(json['username']),
        email: asT<String?>(json['email']),
        address: json['address'] == null
            ? null
            : Address.fromJson(asT<Map<String, dynamic>>(json['address'])!),
        phone: asT<String?>(json['phone']),
        website: asT<String?>(json['website']),
        company: json['company'] == null
            ? null
            : Company.fromJson(asT<Map<String, dynamic>>(json['company'])!),
      );

  int? id;
  String? name;
  String? username;
  String? email;
  Address? address;
  String? phone;
  String? website;
  Company? company;

  @override
  String toString() {
    return jsonEncode(this);
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id,
        'name': name,
        'username': username,
        'email': email,
        'address': address,
        'phone': phone,
        'website': website,
        'company': company,
      };
}

class Address {
  Address({
    this.street,
    this.suite,
    this.city,
    this.zipcode,
    this.geo,
  });

  factory Address.fromJson(Map<String, dynamic> json) => Address(
        street: asT<String?>(json['street']),
        suite: asT<String?>(json['suite']),
        city: asT<String?>(json['city']),
        zipcode: asT<String?>(json['zipcode']),
        geo: json['geo'] == null
            ? null
            : Geo.fromJson(asT<Map<String, dynamic>>(json['geo'])!),
      );

  String? street;
  String? suite;
  String? city;
  String? zipcode;
  Geo? geo;

  @override
  String toString() {
    return jsonEncode(this);
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
        'street': street,
        'suite': suite,
        'city': city,
        'zipcode': zipcode,
        'geo': geo,
      };
}

class Geo {
  Geo({
    this.lat,
    this.lng,
  });

  factory Geo.fromJson(Map<String, dynamic> json) => Geo(
        lat: asT<String?>(json['lat']),
        lng: asT<String?>(json['lng']),
      );

  String? lat;
  String? lng;

  @override
  String toString() {
    return jsonEncode(this);
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
        'lat': lat,
        'lng': lng,
      };
}

class Company {
  Company({
    this.name,
    this.catchphrase,
    this.bs,
  });

  factory Company.fromJson(Map<String, dynamic> json) => Company(
        name: asT<String?>(json['name']),
        catchphrase: asT<String?>(json['catchPhrase']),
        bs: asT<String?>(json['bs']),
      );

  String? name;
  String? catchphrase;
  String? bs;

  @override
  String toString() {
    return jsonEncode(this);
  }

  Map<String, dynamic> toJson() => <String, dynamic>{
        'name': name,
        'catchPhrase': catchphrase,
        'bs': bs,
      };
}
