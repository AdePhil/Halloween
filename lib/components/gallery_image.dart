import 'package:flutter/widgets.dart';

class GalleryImage extends StatelessWidget {
  final String _imagePath;
  final double _width;
  final double _height;

  GalleryImage(this._imagePath, this._width, this._height);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: this._width,
      height: this._height,
      child: Image.asset(this._imagePath, fit: BoxFit.cover),
    );
  }
}
