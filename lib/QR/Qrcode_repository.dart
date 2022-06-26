


// import 'dart:html';

import 'package:check_app/Dto/CMRespDto.dart';
import 'package:check_app/QR/Qrcode_provider.dart';
import 'package:check_app/Token/QRcheck_code.dart';
import 'package:get/get_connect/http/src/response/response.dart';

class QrcodeRepository{
  final QrCodeProvider _qrCodeProvider = QrCodeProvider();

  Future<void> findCode() async {
    Response response = await _qrCodeProvider.findcode();
    dynamic body = response.body;
    final CMRespDto cmRespDto = CMRespDto.fromJson(body);
    print(cmRespDto.code);
    print(cmRespDto.msg);
    print(cmRespDto.data);


    QRcheck_code= cmRespDto.code; // 오류 수정함.
    QRcheck_data = cmRespDto.data;

}

}