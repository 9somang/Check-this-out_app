import 'package:check_app/user/user_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class UserInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    UserController u = Get.find();
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('나의 계정 정보 보기'),
        backgroundColor: Colors.black,
      ),
      body: Container(
        child: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("회원 번호 : ${u.principal.value.id}",
                style: TextStyle(
                  fontSize: 20
                ),
                ),
                Text("학생 이름 : ${u.principal.value.username}",
                    style: TextStyle(
                        fontSize: 20
                ),
                ),
                Text("학번 : ${u.principal.value.student_id}",
                  style: TextStyle(
                      fontSize: 20
                ),
                ),
              ]
                ),
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/image/시그니처(세로).jpg'),
              fit: BoxFit.scaleDown,
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.2), BlendMode.dstATop)),
          )
        ),
    );
  }
}
