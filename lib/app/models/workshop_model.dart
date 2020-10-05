class Workshop {
  String id;
  String title;

  Workshop({this.title});

  Workshop.fromJson(Map<String, dynamic> json) {
    id = json['workshop_id'];
    title = json['title'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['title'] = this.title;
    data['workshop_id'] = this.id;
    return data;
  }
}
