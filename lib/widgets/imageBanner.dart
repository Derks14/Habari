import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ImageBanner extends StatelessWidget {
  final String imagePath;
  
  ImageBanner(this.imagePath);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(minHeight: 180),
      child: Image.network(
          this.imagePath,
          fit: BoxFit.fitWidth,
          filterQuality: FilterQuality.low,
          loadingBuilder:(BuildContext context, Widget child, ImageChunkEvent loadingProgress) => loader(context, child, loadingProgress))
    );
  }


  Widget loader(BuildContext context, Widget child, ImageChunkEvent loadingProgress) {
    if (loadingProgress == null) return child;
    return Center(
      child: CircularProgressIndicator(
        value: loadingProgress.expectedTotalBytes != null ? loadingProgress.cumulativeBytesLoaded / loadingProgress.expectedTotalBytes : null,
      ),
    );
    }
}
