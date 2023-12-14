
class DataModel {
  String major1;
  int count1;
  DataModel({
    required this.major1,
    required this.count1,
  });

  factory DataModel.fromJson(Map<String, dynamic> json) => DataModel(
        major1: json["major"],
        count1: int.parse(json["count"]),
      );
}

List<DataModel> data1ModelFromJson(List data) => List<DataModel>.from(
      data.map(
        (e) => DataModel.fromJson(e),
      ),
    );
