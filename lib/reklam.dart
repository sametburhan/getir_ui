import 'package:flutter/material.dart';

class ustPhoto extends StatelessWidget {
  final assetText;
  ustPhoto({required this.assetText});

  @override
  Widget build(BuildContext context) {
    return Image.asset(assetText);
  }
}
