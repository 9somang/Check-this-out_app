class RegisterReqDto {
  final String? username;
  final String? password;
  final String? num;

  RegisterReqDto(this.username, this.password, this.num);

  Map<String, dynamic> toJson() => {
    "username" : username,
    "password" : password,
    "num" : num,
  };
}