class LoginReqDto {
  final String? num;
  final String? password;

  LoginReqDto(this.num, this.password);

  Map<String, dynamic> toJson() => {
    "num": num,
    "password": password,
  };
}
