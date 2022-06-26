import 'package:check_app/QR/QrCode.dart';
import 'package:check_app/user/Login.dart';
import 'package:check_app/user/user_controller.dart';
import 'package:check_app/userinfo.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'check.dart';
import 'checkpage.dart';


class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  List<BottomNavigationBarItem> bottomItems = [
    BottomNavigationBarItem(
        label: '홈',
        icon: Icon(Icons.home_filled)
    ),
    BottomNavigationBarItem(
        label: 'QR 코드',
        icon: Icon(Icons.qr_code)
    ),
  ];

  List pages = [
    CheckHomepage(),
    QrcodePage(),
  ];

  @override
  Widget build(BuildContext context) {
    UserController u = Get.put(UserController());
    return Scaffold(
      appBar: AppBar(
        title: Text('환영합니다 ${u.principal.value.username} 님'),
        centerTitle: true,
        backgroundColor: Colors.black,
        elevation: 0.0,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/image/심벌마크입체배경제거.png'),
                backgroundColor: Colors.white,
              ),
              accountName: Text('${u.principal.value.username}'), // 학생 이름 불러오기
              accountEmail: Text('${u.principal.value.student_id}'), // 학번 불러오기
              decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30.0),
                      bottomRight: Radius.circular(30.0)
                  )
              ),

            ),
            ListTile(
              leading: Icon(Icons.exit_to_app, color: Colors.black),
              title: Text('로그아웃'),
              onTap: () {
                _logoutDialog(context);
              },
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.person, color: Colors.black),
              title: Text('나의 계정정보 보기'),
              onTap: () {
                Navigator.pop(context);
                Get.to(() => UserInfo());
              },
              trailing: Icon(Icons.arrow_forward_ios),
            ),
            Divider(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        // bar의 배경색
        selectedItemColor: Colors.black,
        // 선택된 카테고리의 색상
        unselectedItemColor: Colors.grey.withOpacity(.60),
        // 선택 안된 카테고리의 색상
        selectedFontSize: 14,
        //선택된 카테고리의 폰트사이즈
        unselectedFontSize: 10,
        // 선택안된 카테고리의 폰트사이즈
        currentIndex: _selectedIndex,
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: bottomItems,
      ),
      body: pages[_selectedIndex],
    );
  }

  void _logoutDialog(BuildContext context) {
    UserController u = Get.find();
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("로그아웃 하시겠습니까?"),
            content: SingleChildScrollView(
              child: ListBody(
                  children: <Widget>[
                    Text('로그아웃 시 로그인 화면으로 이동합니다.')
                  ]
              ),
            ),
            actions: [
              FlatButton(
                child: Text("예"),
                onPressed: () {
                  Navigator.of(context).pop();
                  u.logout();
                  Get.offAll(LoginPage());
                },
              ),
              FlatButton(
                child: Text("아니요"),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              )
            ],
          );
        });
  }
}
