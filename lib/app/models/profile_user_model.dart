class ProfileUser {
  String name;
  String lastname;

  ProfileUser({this.name, this.lastname});

  ProfileUser.fromJson(Map<String, dynamic> json) {
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
