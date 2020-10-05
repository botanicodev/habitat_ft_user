class Workshop {
  String id;
  String title;
  String status;

  Workshop({this.title});

  Workshop.fromJson(Map<String, dynamic> json) {
    id = json['workshop_id'];
    title = json['title'];
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['workshop_id'] = this.id;
    data['title'] = this.title;
    data['status'] = this.status;
    return data;
  }
}
