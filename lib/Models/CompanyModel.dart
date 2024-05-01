class CompanyModel {
  CompanyModel({
      this.data,});

  CompanyModel.fromJson(dynamic json) {
    if (json['data'] != null) {
      data = [];
      json['data'].forEach((v) {
        data?.add(Data.fromJson(v));
      });
    }
  }
  List<Data>? data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (data != null) {
      map['data'] = data?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

class Data {
  Data({
      this.id, 
      this.name, 
      this.image, 
      this.email, 
      this.website, 
      this.about, 
      this.location, 
      this.createdAt, 
      this.updatedAt,});

  Data.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    image = json['image'];
    email = json['email'];
    website = json['website'];
    about = json['about'];
    location = json['location'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }
  int? id;
  String? name;
  dynamic image;
  String? email;
  String? website;
  String? about;
  String? location;
  String? createdAt;
  String? updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    map['image'] = image;
    map['email'] = email;
    map['website'] = website;
    map['about'] = about;
    map['location'] = location;
    map['created_at'] = createdAt;
    map['updated_at'] = updatedAt;
    return map;
  }

}