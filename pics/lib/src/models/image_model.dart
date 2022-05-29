class ImageModel {
  late int id;
  late String url;
  late String title;

  ImageModel(this.id, this.url, this.title);

  ImageModel.fromJson(Map<String, dynamic> parsedJSON) {
    id = parsedJSON['id'];
    url = parsedJSON['url'];
    title = parsedJSON['title'];
  }
}
