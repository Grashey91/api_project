class ApiEndpoints {
  //Api Base Url
  static const String baseUrl = "http://13.127.95.39:3000/";

  //Api Endpoints
  static const String registerApi = "$baseUrl/api/register";
  static const String loginApi = "$baseUrl/api/login";
  static const String getOtpApi = "$baseUrl/api/login/get-otp";
  static const String verifyOtpApi = "$baseUrl/api/login/verify-otp";
  static const String profileApi = "$baseUrl/api/profile";
}
