class LocationModel {
  String label;
  String location;
  String value;
  String thumb;
  List<String> images;

  LocationModel({
    required this.images,
    required this.thumb,
    required this.label,
    required this.location,
    required this.value,
  });
}
