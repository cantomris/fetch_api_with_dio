class PriceModel{
  double min;
  double max;

  PriceModel({this.min, this.max});

  PriceModel.fromJson(Map<String, dynamic> json) {
    min = json['min'];
    max = json['max'];
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['min'] = this.min;
    data['max'] = this.max;
    return data;
  }
}