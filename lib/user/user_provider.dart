import 'package:get/get.dart';

const host = "음음음음";
// 통신
class UserProvider extends GetConnect {

  Future<Response> register(Map data)=> post("$host/signup/",data);

  Future<Response> login(Map data) => post ("$host/login/",data);
}