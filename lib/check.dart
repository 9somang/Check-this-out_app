import 'package:flutter/material.dart';


class Checkpage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: <Widget>[
            ElevatedButton(
              onPressed: () {},
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
              onPressed: () {},
              child: Text("Upload to server"),
            ),
          ],
        ),
      ),
    );
  }
}
