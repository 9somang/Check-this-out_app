import 'package:check_app/homepage.dart';
import 'package:check_app/user/user_controller.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';
import '../validate.dart';
import '../view/custom_elevated_button.dart';
import '../view/custom_text_form_field.dart';

import 'join.dart';

class LoginPage extends StatelessWidget {
  final _formkey = GlobalKey<FormState>();
  final UserController u = Get.put(UserController());

  final _student_id = TextEditingController();
  final _password = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromARGB(224, 229, 162, 236),
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: ListView(
            children: [
              Container(
                height: 150,
                width: 100,
                margin: EdgeInsets.all(1),
                padding: EdgeInsets.fromLTRB(0, 15, 100,100),
                decoration: BoxDecoration(

                  image: DecorationImage(
                      image: AssetImage('assets/image/정상수 까꿍.jpg'),
                      fit: BoxFit.contain
                  ),
                ),
              ),
              Container(
                alignment: Alignment.center,
                width: 170,
                height: 100,
                child: Text(
                  "Check this 로그인",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),

                ),
              ),
              _loginForm()

            ],
          ),
        ),
      ),
    );
  }

  Widget _loginForm() {
    // 항상 return 타입은 최상위보호타입으로 잡아주는게좋음(widget)
    return Form(
      // 나중에 DB 서버에 한번에 날려야 하기 때문에 form안에 한꺼번에 감쌈
      key: _formkey,
      child: Column(
        children: [
          CustomTextFormField(
            controller: _student_id,
            hint: "학번",
            funValidator: validateStudent_id(),
          ),
          CustomTextFormField(
            controller: _password,
            hint: "비밀번호",
            funValidator: validatePassword(),
          ),
          CustomElevatedButton(
            text: "로그인",
            funpageRoute: () async{
              if (_formkey.currentState!.validate()) {
                int result =
                await u.login(_student_id.text.trim(), _password.text.trim());
                print(result);
                if (result == 1) {
                  Get.offAll(Homepage());
                }else {showToastlogin('로그인에 실패했습니당');}
              }
            },
          ),
          TextButton(
            onPressed: () {
              Get.to(JoinPage());
            },
            child: Text(
              "회원가입이 안되어 있다면 Click this",
              textAlign: TextAlign.center,
            ),
            style: TextButton.styleFrom(
                primary: Colors.redAccent
            ),
          ),
        ],
      ),
    );
  }

  void showToastlogin(String message) {
    Fluttertoast.showToast(
        msg: message,
        backgroundColor: Colors.black,
        textColor: Colors.white,
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM
    );
  }
}
