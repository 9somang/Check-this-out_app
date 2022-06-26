
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'check.dart';

class CheckHomepage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
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