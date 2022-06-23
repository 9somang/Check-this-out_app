import 'package:check_app/Token/token.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';


class CheckPage extends StatefulWidget{
  @override
  _CheckpageState createState() => _CheckpageState();
}


class _CheckpageState extends State<CheckPage>{
  final ImagePicker _picker = ImagePicker();

  Future<dynamic> patchImage(dynamic input) async {
    print("사진을 서버에 업로드 합니다.");
    var dio = new Dio();
    try {
      dio.options.contentType = 'multipart/form-data';
      dio.options.maxRedirects.isFinite;

      dio.options.headers = {'token': jwtToken};
      var response = await dio.patch(
        'http://base uri' + '/users/image',
        data: input,
      );
      print('성공적으로 업로드했습니다');
      return response.data;
    } catch (e) {
      print(e);
    }
  }

  var formData = FormData.fromMap({'image': await MultipartFile.fromFile(sendData)});

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
                  //이미지를 선택
                  source: ImageSource.gallery, //위치는 갤러리
                  maxHeight: 75,
                  maxWidth: 75,
                  imageQuality: 30, // 이미지 크기 압축을 위해 퀄리티를 30으로 낮춤.
                );
                if (selectImage != null) {
                  dynamic sendData = selectImage.path;
                }
              },
              child: Text("Choose a file"),
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
              onPressed: (){
                patchImage(formData);
            },
              child: Text("Upload to server"),
            ),
          ],
        ),
      ),
    );
  }






}
