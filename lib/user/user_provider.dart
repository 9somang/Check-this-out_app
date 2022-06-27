import 'package:get/get.dart';

const host = "http://43.200.123.69:5000/auth";
// 통신
class UserProvider extends GetConnect {

  Future<Response> register(Map data)=> post("$host/signup/",data);

  Future<Response> login(Map data) => post ("$host/login/",data);
}
