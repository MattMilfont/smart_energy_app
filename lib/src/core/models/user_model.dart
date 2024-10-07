class UserModel {
  int? id;
  String? name;
  String? email;
  String? phone;
  Address? address;
  String? profilePictureBase64;
  String? codBox;
  String? dateOfBirth;
  String? createdAt;
  String? updatedAt;

  UserModel(
      {this.id,
      this.name,
      this.email,
      this.phone,
      this.address,
      this.profilePictureBase64,
      this.codBox,
      this.dateOfBirth,
      this.createdAt,
      this.updatedAt});

  UserModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    phone = json['phone'];
    address =
        json['address'] != null ? Address.fromJson(json['address']) : null;
    profilePictureBase64 = json['profilePictureBase64'];
    codBox = json['cod_box'];
    dateOfBirth = json['dateOfBirth'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['email'] = email;
    data['phone'] = phone;
    if (address != null) {
      data['address'] = address!.toJson();
    }
    data['profilePictureBase64'] = profilePictureBase64;
    data['cod_box'] = codBox;
    data['dateOfBirth'] = dateOfBirth;
    data['createdAt'] = createdAt;
    data['updatedAt'] = updatedAt;
    return data;
  }
}

class Address {
  String? street;
  String? number;
  String? city;
  String? state;
  String? zipCode;

  Address({this.street, this.number, this.city, this.state, this.zipCode});

  Address.fromJson(Map<String, dynamic> json) {
    street = json['street'];
    number = json['number'];
    city = json['city'];
    state = json['state'];
    zipCode = json['zipCode'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['street'] = street;
    data['number'] = number;
    data['city'] = city;
    data['state'] = state;
    data['zipCode'] = zipCode;
    return data;
  }
}
