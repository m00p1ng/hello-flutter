import 'dart:async';
import 'package:rxdart/rxdart.dart';

import '../resources/repository.dart';
import '../models/item_model.dart';

class StoriesBloc {
  final _repository = Repository();
  final _topIds = PublishSubject<List<int>>();
  final _itemsOutput = BehaviorSubject<Map<int, Future<ItemModel?>>>();
  final _itemFetcher = PublishSubject<int>();

  Stream<List<int>> get topIds => _topIds.stream;
  Stream<Map<int, Future<ItemModel?>>> get items => _itemsOutput.stream;

  Function(int) get fetchItem => _itemFetcher.sink.add;

  StoriesBloc() {
    _itemFetcher.stream.transform(_itemsTransformer()).pipe(_itemsOutput);
  }

  fetchTopIds() async {
    final ids = await _repository.fetchTopIds();
    _topIds.sink.add(ids);
  }

  clearCache() {
    return _repository.clearCache();
  }

  ScanStreamTransformer<int, Map<int, Future<ItemModel?>>> _itemsTransformer() {
    return ScanStreamTransformer(
      (Map<int, Future<ItemModel?>> cache, int id, _) {
        cache[id] = _repository.fetchItem(id);

        return cache;
      },
      <int, Future<ItemModel?>>{},
    );
  }

  dispose() {
    _topIds.close();
    _itemFetcher.close();
    _itemsOutput.close();
  }
}
