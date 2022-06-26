


import 'package:check_app/QR/Qrcode_repository.dart';
import 'package:get/get.dart';

class QrcodeController extends GetxController{
  final QrcodeRepository _qrcodeRepository = QrcodeRepository();

  void findCode() async{
    _qrcodeRepository.findCode();
  }
}