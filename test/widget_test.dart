// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:wasser_app/common/widgets/loading_state.dart';
import 'package:wasser_app/ui/pages/cash_flow/model/saldo_response.dart';
import 'package:wasser_app/ui/pages/login/model/login_response.dart';

void main() {
  group('Widget Test', () {
    testWidgets('LoadingState Test', (WidgetTester tester) async {
      await tester.pumpWidget(const LoadingState());
      var circularProgressIndicator = find.byType(CircularProgressIndicator);

      expect(circularProgressIndicator, findsOneWidget);
    });
  });

  group('Response Test', () {
    final saldoResponseJson = {
      "meta": {"code": 200, "status": true, "message": "Success"},
      "data": [
        {
          "id": 1,
          "type": "in",
          "jumlah": 100000,
          "saldo": 100000,
          "keterangan": "Kas Awal",
          "user_id": 2,
          "created_at": "2022-07-02T16:34:00.000000Z",
          "updated_at": "2022-07-02T16:34:00.000000Z",
          "user": {
            "id": 2,
            "name": "Anis Humanisa",
            "email": "anis@gmail.com",
            "no_pelanggan": 0,
            "email_verified_at": null,
            "no_telp": "082123803093",
            "alamat": "Jaksel",
            "jk": "male",
            "tgl_lahir": "2001-01-01",
            "avatar": "2022063007559b2a3d29563e867f009dc396b2054002.jpeg",
            "role": "admin",
            "wilayah_id": 1,
            "created_at": "2022-06-30T07:55:00.000000Z",
            "updated_at": "2022-06-30T07:55:00.000000Z",
            "wilayah": {
              "id": 1,
              "nama_wilayah": "Curdeng",
              "created_at": "2022-06-30T07:54:44.000000Z",
              "updated_at": "2022-06-30T07:54:44.000000Z"
            }
          }
        }
      ]
    };
    final loginResponseJson = {
      "meta": {"code": 200, "status": true, "message": "Success"},
      "data": {
        "user": {
          "id": 2,
          "name": "Anis Humanisa",
          "email": "anis@gmail.com",
          "no_pelanggan": 01209210,
          "email_verified_at": null,
          "no_telp": "082123803093",
          "alamat": "Jaksel",
          "jk": "male",
          "tgl_lahir": "2001-01-01",
          "avatar": "2022063007559b2a3d29563e867f009dc396b2054002.jpeg",
          "role": "admin",
          "wilayah_id": 1,
          "created_at": "2022-06-30T07:55:00.000000Z",
          "updated_at": "2022-06-30T07:55:00.000000Z",
          "wilayah": {
            "id": 1,
            "nama_wilayah": "Curdeng",
            "created_at": "2022-06-30T07:54:44.000000Z",
            "updated_at": "2022-06-30T07:54:44.000000Z"
          }
        },
        "access_token": "7|45mEq1UuJ9h5TXx0hrIoflFRyR4c5ybpIkHuthQ5",
        "token_type": "Bearer"
      }
    };

    test('LoginResponse Test', () {
      // Arrange
      var accessToken = "7|45mEq1UuJ9h5TXx0hrIoflFRyR4c5ybpIkHuthQ5";
      var name = "Anis Humanisa";
      var role = "admin";

      // Act
      var result = LoginResponse.fromJson(loginResponseJson);

      // Assert
      // Meta
      expect(result.meta?.status, isTrue);
      expect(result.meta?.code, 200);
      expect(result.meta?.message, "Success");

      // Data
      expect(result.data?.accessToken, accessToken);
      expect(result.data?.user?.name, name);
      expect(result.data?.user?.role, role);
    });

    test('WilayahResponse Test', () {
      // Arrange
      var type = "in";
      var saldo = 100000;

      // Act
      var result = SaldoKasResponse.fromJson(saldoResponseJson);

      // Assert
      // Meta
      expect(result.meta?.status, isTrue);
      expect(result.meta?.code, 200);
      expect(result.meta?.message, "Success");

      // Data
      expect(result.data, isNotEmpty);
      expect(result.data?.length, 1);
      expect(result.data?.first.type, type);
      expect(result.data?.first.saldo, saldo);
    });
  });
}
