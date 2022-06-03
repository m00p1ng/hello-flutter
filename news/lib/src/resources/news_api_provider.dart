import 'dart:convert';
import 'package:http/http.dart' show Client;

import 'repository.dart';
import '../models/item_model.dart';

const _root = 'https://hacker-news.firebaseio.com/v0';

class NewsApiProvider implements Source {
  var client = Client();

  @override
  Future<List<int>> fetchTopIds() async {
    var url = Uri.parse('$_root/topstories.json?print=pretty');
    final response = await client.get(url);
    final ids = json.decode(response.body);

    return ids.cast<int>();
  }

  @override
  Future<ItemModel> fetchItem(int id) async {
    var url = Uri.parse('$_root/item/$id.json?print=pretty');
    final response = await client.get(url);
    final parsedJson = json.decode(response.body);

    return ItemModel.fromJson(parsedJson);
  }
}
