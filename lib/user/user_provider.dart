import 'package:get/get.dart';

const host = "http://127.0.0.1:5000";
// 통신
class UserProvider extends GetConnect {

  Future<Response> register(Map data)=> post("$host/signup/",data);

  Future<Response> login(Map data) => post ("$host/login/",data);
}