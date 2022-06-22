class LoginReqDto {
  final String? student_id;
  final String? password;

  LoginReqDto(this.student_id, this.password);

  Map<String, dynamic> toJson() => {
    "student_id": student_id,
    "password": password,
  };
}
