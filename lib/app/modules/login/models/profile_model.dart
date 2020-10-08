class Profile {
  String name;
  String lastname;

  Profile({this.name, this.lastname});

  Profile.fromJson(Map<String, dynamic> json) {
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
