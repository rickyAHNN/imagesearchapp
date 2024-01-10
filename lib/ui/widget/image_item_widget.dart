import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:image_search_app/data/model/image_item.dart';

class ImageItemWidget extends StatelessWidget {
final ImageItem imageItem;

const ImageItemWidget({super.key,
    required this.imageItem,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: CachedNetworkImage(
        imageUrl: imageItem.imageUrl,
        fit: BoxFit.cover,
      ),
    );
  }
}
