


import 'package:check_app/QR/Qrcode_provider.dart';
import 'package:get/get_connect/http/src/response/response.dart';

class QrcodeRepository{
  final QrCodeProvider _qrCodeProvider = QrCodeProvider();

  Future<void> findCode(student_id) async {
    Response response = await _qrCodeProvider.findcode(student_id);
    dynamic body = await response.body;
    print(body);

}

}