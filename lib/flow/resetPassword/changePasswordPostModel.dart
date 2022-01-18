// ignore_for_file: unnecessary_this, prefer_collection_literals, file_names

class ChangePasswordPostModel {
  String? email;
  String? password;
  String? password_confirmation;

  ChangePasswordPostModel(
      {this.email, this.password, this.password_confirmation});

  ChangePasswordPostModel.fromJson(Map<String, dynamic> json) {
    email = json['email'].toString();
    password = json['password'].toString();
    password_confirmation = json['password_confirmation'].toString();
  }

  Map<String, dynamic> toJson() {
    final Map<String, String> data = Map<String, String>();
    data['email'] = this.email!;
    data['password'] = this.password!;
    data['password_confirmation'] = this.password_confirmation!;
    return data;
  }
}
