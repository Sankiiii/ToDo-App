class UserModel {
  static String tableName1 = "UserTable";
  static String userId = "userId";
  static String userName = "userName";
  static String userEmail = "email";
  static String userPassword = "userPassword";
}

  class usermodel{
    final int? userId;
    final String userName;
    final String userEmail;
    final String userPassword;

    usermodel({
      this.userId ,
      required this.userName ,
      required this.userEmail,
      required this.userPassword

});

    usermodel copyWith({
      int? userId,
      String? userName,
      String? userEmail,
      String? userPassword
  }){
      return usermodel(
          userId : userId ?? this.userId ,
          userName: userName ?? this.userName,
          userEmail: userEmail ?? this.userEmail,
          userPassword: userPassword ?? this.userPassword);
    }

    static usermodel fromJson(Map<String , dynamic> json) {
      return usermodel(
      userId: json['userId'] as int,
      userName: json['userName'] as String,
    userEmail: json['userEmail'] as String,
    userPassword: json['userPassword'] as String
    );
    }

    Map<String , dynamic> toJson(){
      return{
        "userId" : userId,
        "userName" : userName,
        "userEmail" : userEmail,
        "userPassword" : userPassword
      };
    }



}
