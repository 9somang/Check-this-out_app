
import 'package:check_app/homepage.dart';
import 'package:check_app/user/Login.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main()=> runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(fontFamily: 'Jua'),
      home: LoginPage(), // 테스트시 이곳 바꾸면 됨.. LoginPage 또는 Homepage
    );

  }
}