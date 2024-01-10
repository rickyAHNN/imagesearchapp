import 'package:image_search_app/data/data_source/pixabay_api.dart';
import 'package:image_search_app/data/mapper/image_mapper.dart';
import 'package:image_search_app/data/model/image_item.dart';
import 'package:image_search_app/data/repository/interface.dart';

class PixabayImageItemRepository implements ImageItemRepository {
  final _api = PixabayApi();
  @override
  Future<List<ImageItem>> getImageItems(String query) async {
    final dto = await _api.getImageResult(query);
    if (dto.hits == null) {
      return [];
    }
    return dto.hits!.map((e) => e.toImageItem()).toList();
  }
}

class MockImageItemRepository implements ImageItemRepository {
  @override
  Future<List<ImageItem>> getImageItems(String query) async {
    await Future.delayed(const Duration(seconds: 1));
    if (query == 'apple') {
      return [
        ImageItem(
            imageUrl:
                'https://cdn.pixabay.com/photo/2018/01/05/16/24/rose-3063284_150.jpg',
            tags: ''),
      ];
    } else {
      return [
        ImageItem(
            imageUrl:
                'https://cdn.pixabay.com/photo/2018/01/05/16/24/rose-3063284_150.jpg',
            tags: ''),
      ];
    }
  }
}
