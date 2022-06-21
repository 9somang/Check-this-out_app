import 'package:check_app/user/user.dart';
import 'package:check_app/user/user_repository.dart';
import 'package:get/get.dart';
import '../Token/token.dart';


class UserController extends GetxController {
  final UserRepository _userRepository = UserRepository();
  final RxBool isLogin = false.obs; // UI가 관찰가능한 변수 => 변경 => UI가 자동업데이트
  final principal = User().obs;

  Future<void> register(String username, String password, String num)async{
    await _userRepository.register(username, password, num);
  }


  Future<int> login(String num, String password) async {
    User principal = await _userRepository.login(num, password);

    if (principal.id != null) {
      this.isLogin.value = true;
      this.principal.value = principal;
      return 1;
    } else {
      return -1;
    }
  }

  void logout() {
    this.isLogin.value = false;
    jwtToken = null;
  }
}
