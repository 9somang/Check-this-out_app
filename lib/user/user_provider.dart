import 'package:get/get.dart';

const host = "http://10.0.2.2:5000/auth";
// 통신
class UserProvider extends GetConnect {

  Future<Response> register(Map data)=> post("$host/signup/",data);

  Future<Response> login(Map data) => post ("$host/login/",data);
}