class RegisterReqDto {
  final String? username;
  final String? password;
  final String? student_id;

  RegisterReqDto(this.username, this.password, this.student_id);

  Map<String, dynamic> toJson() => {
    "username" : username,
    "password" : password,
    "student_id" : student_id,
  };
}