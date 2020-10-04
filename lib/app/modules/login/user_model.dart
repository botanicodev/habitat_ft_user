class User {
  String name;
  String lastname;

  User({this.name, this.lastname});

  User.fromJson(Map<String, dynamic> json) {
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
