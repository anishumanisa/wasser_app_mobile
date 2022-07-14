// ignore_for_file: constant_identifier_names

class ApiEndPoint {
  /// Base URL
  static const BASE_URL = "http://127.0.0.1:8000/api";
  // static const BASE_URL = "http://192.168.1.5:8000/api";

  /// URL End Point

  /// AUTH
  static const login = "$BASE_URL/login";
  static const register = "$BASE_URL/register";

  static const wilayah = "$BASE_URL/wilayah";

  static const saldo = "$BASE_URL/saldo";

  static const transaksi = "$BASE_URL/transaksi";

  static const payment = "$BASE_URL/pembayaran/";

  static const record = "$BASE_URL/pencatatan/";

  static const paymentDetail = "$BASE_URL/paymentDetail/";

  static const paymentCustomer = "$BASE_URL/customer/";

  static const userList = "$BASE_URL/users/";

  static const userRole = "$BASE_URL/userRole/";

  static const deleteUser = "$BASE_URL/delete/";
}
