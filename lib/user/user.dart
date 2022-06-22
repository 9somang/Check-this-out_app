

class User{
  final int? id;
  final String? username;
  final String? password;
  final String? student_id;


  User(
      {
      this.id,
      this.username,
      this.password,
      this.student_id,

      });


    User.fromJson(Map<String, dynamic>json)  //외부에서온 데이터를 다트오브젝트로변경
    : id = json['id'],
      username = json['username'],
      password = json['password'],
      student_id = json['student_id'];

}
