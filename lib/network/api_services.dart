import 'package:api_project/network/api_endpoints.dart';
import 'package:dio/dio.dart';

class ApiServices {
  final Dio _dio = Dio();

  Future<String> getOtp(mobile) async {
    Response response = await _dio.get(ApiEndpoints.getOtpApi);
    return response.data;
  }

  Future<String> verfiyOtp(mobile, otp) async {
    Response response = await _dio
        .post(ApiEndpoints.verifyOtpApi, data: {"mobile", mobile, "otp", otp});

    return response.statusCode.toString();
  }

  register(name, mobile, email, password) async {
    Response response = await _dio.post(ApiEndpoints.registerApi, data: {
      "name",
      name,
      "mobile",
      mobile,
      "email",
      email,
      "password",
      password
    });
  }

  loginApi(mobile, password) async {
    Response response = await _dio.post(ApiEndpoints.loginApi,
        data: {"mobile", mobile, "password", password});
  }

  Future<String> getProfile() async {
    Response response = await _dio.get(ApiEndpoints.profileApi);
    return response.data.toString();
  }

  updateProfile(name, email, mobile, password) {}
}
