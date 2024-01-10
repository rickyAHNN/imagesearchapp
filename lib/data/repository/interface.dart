import 'package:image_search_app/data/model/image_item.dart';

abstract interface class ImageItemRepository{
  Future<List<ImageItem>> getImageItems(String query);
}