import 'package:check_app/Token/token.dart';

import 'package:check_app/user/user_controller.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';


class CheckPage extends StatefulWidget{
  @override
  _CheckpageState createState() => _CheckpageState();
}



class _CheckpageState extends State<CheckPage>{
  final ImagePicker _picker = ImagePicker();
  dynamic _selectedData = null;
  UserController u = UserController();

  Future<dynamic> patchImage(dynamic input) async {
    print("사진을 서버에 업로드 합니다.");
    var dio = new Dio();
    try {
      dio.options.contentType = 'multipart/form-data';
      dio.options.maxRedirects.isFinite;
      dio.options.headers = {'authorization': jwtToken, 'student_id': u.principal.value.student_id};
      var response = await dio.post(
        'http://10.0.2.2:5000' + '/image',
        data: input,
      );
      print('성공적으로 업로드했습니다');
      return response.data;
    } catch (e) {
      print(e);
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: <Widget>[
            ElevatedButton(
              onPressed: () async {
                XFile? selectImage = await _picker.pickImage(
                  source: ImageSource.gallery,
                  // maxHeight: 75,
                  // maxWidth: 75,
                  // imageQuality: 30,
                );
                if (selectImage != null) {
                  dynamic sendData = selectImage.path;
                  _selectedData = FormData.fromMap({'image': await MultipartFile.fromFile(sendData)});
                }
              },
              child: Text("이미지 선택하기"),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  width: 1,
                ),
              ),
              width: 350,
              height: 400,
            ),
            ElevatedButton(
              onPressed: () async {
                await patchImage(_selectedData);
            },
              child: Text("서버에 업로드하기"),
            ),
          ],
        ),
      ),
    );
  }






}
