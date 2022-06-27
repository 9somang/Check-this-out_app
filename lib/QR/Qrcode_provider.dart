import 'package:check_app/user/user_controller.dart';
import 'package:get/get.dart';
import '../Token/token.dart';
UserController u = Get.find();

const host = "http://43.200.123.69:5000/image";

class QrCodeProvider extends GetConnect {

  Future<Response> findcode()=>
      get("$host/qr/${u.principal.value.student_id}/", headers: {"authorization" : jwtToken ?? ""});

}