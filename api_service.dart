import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  final String baseUrl = "http://ma7aliapigp.runasp.net/api/Account";  // تعديل رابط API

  // 1️⃣ دالة تسجيل الحساب (Register)
  Future<Map<String, dynamic>?> registerUser({
    required String email,
    required String password,
    required String firstName,
    required String lastName,
    required String phoneNumber,
    required String userName,
    required String role,
  }) async {
    final url = Uri.parse("$baseUrl/Register");

    final response = await http.post(
      url,
      headers: {"Content-Type": "application/json"},
      body: jsonEncode({
        "email": email,
        "password": password,
        "profileImage": "",
        "phoneNumber": phoneNumber,
        "firstName": firstName,
        "lastName": lastName,
        "userName": userName,
        "role": role
      }),
    );

    if (response.statusCode == 200) {
      return jsonDecode(response.body);  // نجاح العملية
    } else {
      return null;  // خطأ في الطلب
    }
  }

  // 2️⃣ دالة تسجيل الدخول (Login)
  Future<Map<String, dynamic>?> loginUser({
    required String email,
    required String password,
  }) async {
    final url = Uri.parse("$baseUrl/Login");  // لو اللينك مختلف غيريه

    final response = await http.post(
      url,
      headers: {"Content-Type": "application/json"},
      body: jsonEncode({
        "email": email,
        "password": password,
      }),
    );

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      return null;
    }
  }
}