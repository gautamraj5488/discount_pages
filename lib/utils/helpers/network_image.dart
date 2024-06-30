import 'package:discounts_pages/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

class NetworkImageWithPlaceholder extends StatelessWidget {
  final String imageUrl;

  const NetworkImageWithPlaceholder({Key? key, required this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = DeviceUtils.getScreenWidth(context);
    return ClipRRect(
      borderRadius: BorderRadius.circular(15.0),
      child: Image.network(
        imageUrl,
        fit: BoxFit.cover,
        width: width*0.5,
        height: double.infinity,
        errorBuilder: (context, error, stackTrace) {
          return Center(child: Icon(Icons.error));
        },
        loadingBuilder: (context, child, loadingProgress) {
          if (loadingProgress == null) return child;
          return Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}