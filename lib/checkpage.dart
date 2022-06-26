
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
                    primary: Colors.black
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

}