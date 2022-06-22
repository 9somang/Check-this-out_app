import 'package:check_app/user/user.dart';
import 'package:check_app/user/user_repository.dart';
import 'package:get/get.dart';
import '../Token/token.dart';


class UserController extends GetxController {
  final UserRepository _userRepository = UserRepository();
  final RxBool isLogin = false.obs; // UI가 관찰가능한 변수 => 변경 => UI가 자동업데이트
  final principal = User().obs;

  Future<void> register(String username, String password, String student_id)async{
    await _userRepository.register(username, password, student_id);
  }


  Future<int> login(String student_id, String password) async {
    User principal = await _userRepository.login(student_id, password);

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
