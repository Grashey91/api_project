import 'package:shared_preferences/shared_preferences.dart';

class SharedPref {
  final String mobileKey = "mobile";
  final String tokenKey = "token";
  final String passwordKey = "password";
  set mobile(mobile) {
    SharedPreferences.getInstance().then(
        (sharedPreference) => {sharedPreference.setString(mobileKey, mobile)});
  }

  set token(token) {
    SharedPreferences.getInstance().then(
        (sharedPreference) => {sharedPreference.setString(tokenKey, token)});
  }

  set password(password) {
    SharedPreferences.getInstance()
        .then((value) => {value.setString(passwordKey, password)});
  }

  Future<String> getMobile() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    String mobileno = sharedPreferences.getString(mobileKey).toString();
    return mobileno;
  }

  Future<String> getToken() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getString(tokenKey).toString();
  }

  Future<String> getPassword() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getString(passwordKey).toString();
  }
}
