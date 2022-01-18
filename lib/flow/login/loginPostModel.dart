// ignore_for_file: unnecessary_this, prefer_collection_literals, file_names

class LoginPostModel {
  String? email;
  String? password;

  LoginPostModel({this.email, this.password});

  LoginPostModel.fromJson(Map<String, dynamic> json) {
    email = json['email'].toString();
    password = json['password'].toString();
  }

  Map<String, dynamic> toJson() {
    final Map<String, String> data = Map<String, String>();
    data['email'] = this.email!;
    data['password'] = this.password!;
    return data;
  }
}
