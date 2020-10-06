class UserProfile {
  String name;
  String lastname;

  UserProfile({this.name, this.lastname});

  UserProfile.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    lastname = json['lastname'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['name'] = this.name;
    data['lastname'] = this.lastname;
    return data;
  }
}
