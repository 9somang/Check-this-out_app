import 'package:check_app/user/user_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'check.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    UserController u = Get.put(UserController());
    return Scaffold(
      appBar: AppBar(
        title: Text('환영합니다 ${u.principal.value.username} 님'),
        centerTitle: true,
        backgroundColor: Colors.pink,
        elevation: 0.0,
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: (){
                  Get.to(CheckPage());
                }
                ,
                child: Text('Check this out'),
                style: ElevatedButton.styleFrom(
                    primary: Colors.pinkAccent.withOpacity(0.8)
                ),
              ),
            ],
          ),
        ),
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/image/checkthisout.jpg'),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(1), BlendMode.dstATop)),
        ),
      ),
    );
  }
}