import 'dart:convert';

import 'package:image_search_app/data/dto/pixabay_dto.dart';
import 'package:http/http.dart' as http;

class PixabayApi {
  Future<PixabayDto> getImageResult(String query) async {
    final response = await http.get(Uri.parse(
        'https://pixabay.com/api/?key=28987779-9df6c41e6717ec67855ddf811&q='
            '$query&image_type=photo'));
    return PixabayDto.fromJson
      (jsonDecode((response.body)));
  }
}
