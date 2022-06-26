import 'package:check_app/user/user_controller.dart';
import 'package:get/get.dart';
import '../Token/token.dart';
UserController u = Get.find();

const host = "http://10.0.2.2:5000/image";

class QrCodeProvider extends GetConnect {

  Future<Response> findcode(String student_id)=>
      get("$host/qr/$student_id/", headers: {"authorization" : jwtToken ?? ""});
}