
Function validateUsername() {
  return (String? value) {
    if (value!.isEmpty) {
      return "유저아이디에 공백이 들어갈 수 없습니다.";
    }  else if (value.length > 13) {
      return "유저아이디의 최대 길이를 초과하였습니다.";
    }else if ( value.length < 2) {
      return "유저아이디의 최소 길이는 2자입니다.";
    } else {
      return null;
    }
  };
}

Function validatePassword() {
  return (String? value) {
    if (value!.isEmpty) {
      return "비밀번호에 공백이 들어갈 수 없습니다.";
    } else if (value.length > 20) {
      return "비밀번호의 길이를 초과하였습니다.";
    } else if ( value.length < 4) {
      return "비밀번호의 최소 길이는 4자입니다.";
    } else {
      return null;
    }
  };
}

Function validateNum() {
  return (String? value) {
    if (value!.isEmpty) {
      return "학번은 공백이 들어갈 수 없습니다.";
    } else if(value.length > 5) {
      return "학번 형식에 맞지 않습니다.";
    } else {
      return null;
    }
  };
}
