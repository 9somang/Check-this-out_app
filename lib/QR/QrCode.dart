import 'package:check_app/Dto/CMRespDto.dart';
import 'package:check_app/QR/QrcodeController.dart';
import 'package:check_app/Token/QRcheck_code.dart';
import 'package:check_app/homepage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:qr_flutter/qr_flutter.dart';

class QrcodePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    QrcodeController q = Get.put(QrcodeController());
    q.findCode();

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if(QRcheck_code == 1)...[
               QrImage(data: "${QRcheck_data}", size: 200)
            ]else...[
              Text('QR코드를 가지고 있지 않습니다.\n 다시 시도해주세요.')
            ]

          ],
        ),
      ),
    );
  }
}
