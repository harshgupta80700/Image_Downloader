import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:image_app/services/getImages.dart';
import 'package:image_app/stores/imageStore.dart';

class Landing extends StatefulWidget {
  @override
  _LandingState createState() => _LandingState();
}

class _LandingState extends State<Landing> {
  ImageServices _imageServices = ImageServices();
  Images _images = Images.getInstance();

  final categoryTextEditingController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _imageServices.getCuratedImages();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //backgroundColor: Colors.black,
        appBar: AppBar(),
        body: Observer(
          builder: (_) {
            if (_images.isLoading) {
              return Center(
                child: CupertinoActivityIndicator(
                  radius: 25,
                ),
              );
            }

            return Column(
              children: [
                Container(
                  margin: EdgeInsets.only(top: 20, right: 10, left: 10),
                  height: 50,
                  child: TextField(
                    controller: categoryTextEditingController,
                    decoration: InputDecoration(
                        suffixIcon: IconButton(
                          icon: Icon(
                            Icons.search,
                            color: Colors.black,
                          ),
                          onPressed: null,
                        ),
                        hintText: "Search For a Category",
                        hintStyle: TextStyle(color: Colors.black),
                        fillColor: Colors.grey.withOpacity(0.5),
                        filled: true,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(100),
                            borderSide: BorderSide(
                              width: 0,
                            ))),
                  ),
                ),
                SizedBox(
                  height: 12,
                ),
                Expanded(
                  child: CarouselSlider.builder(
                      itemCount: _images.images.length,
                      itemBuilder: (__, index) {
                        return Padding(
                            padding: EdgeInsets.symmetric(vertical: 10),
                            child: Container(
                              child: Image.network(
                                  _images.images[index].src.portrait,
                                  fit: BoxFit.contain),
                            ));
                      },
                      options: CarouselOptions(
                        height: MediaQuery.of(context).size.height /1.5,
                        aspectRatio: 16 / 9,
                        viewportFraction: 0.9,
                        initialPage: 0,
                        enableInfiniteScroll: true,
                        reverse: false,
                        autoPlay: true,
                        autoPlayInterval: Duration(seconds: 3),
                        autoPlayAnimationDuration: Duration(milliseconds: 800),
                        autoPlayCurve: Curves.fastOutSlowIn,
                        enlargeCenterPage: true,
                        scrollDirection: Axis.horizontal,
                      )),
                )
              ],
            );
          },
        ));
  }
}
