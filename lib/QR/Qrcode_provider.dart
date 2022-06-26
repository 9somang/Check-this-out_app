import 'package:check_app/user/user_controller.dart';
import 'package:get/get.dart';
import '../Token/token.dart';
UserController u = Get.find();

const host = "http://주소";

class QrCodeProvider extends GetConnect {

  Future<Response> findcode()=>
      get("$host/qrcode/${u.principal.value.student_id}", headers: {"authorization" : jwtToken ?? ""});
}