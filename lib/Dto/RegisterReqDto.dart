class RegisterReqDto {
  final String? student_id;
  final String? password;
  final String? username;


  RegisterReqDto(this.student_id, this.password, this.username);

  Map<String, dynamic> toJson() => {
    "student_id" : student_id,
    "password" : password,
    "username" : username,
  };
}