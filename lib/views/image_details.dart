import 'package:flutter/material.dart';

class ImageDetails extends StatefulWidget {
  @override
  _ImageDetailsState createState() => _ImageDetailsState();
}

class _ImageDetailsState extends State<ImageDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold
      (
        body: Hero(
          tag: "abc",
        child: Container()
    )
    );
  }
}
