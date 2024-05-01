class LoginModel {
  LoginModel({
      this.user, 
      this.token, 
      this.status,});

  LoginModel.fromJson(dynamic json) {
    user = json['user'] != null ? User.fromJson(json['user']) : null;
    token = json['token'];
    status = json['status'];
  }
  User? user;
  String? token;
  bool? status;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (user != null) {
      map['user'] = user?.toJson();
    }
    map['token'] = token;
    map['status'] = status;
    return map;
  }

}

class User {
  User({
      this.id, 
      this.name, 
      this.email, 
      this.createdAt, 
      this.updatedAt,});

  User.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }
  dynamic id;
  dynamic name;
  dynamic email;
  dynamic createdAt;
  dynamic updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    map['email'] = email;
    map['created_at'] = createdAt;
    map['updated_at'] = updatedAt;
    return map;
  }

}