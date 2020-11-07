import 'package:meta/meta.dart';
import 'dart:convert';

Vehicle vehicleFromMap(String str) => Vehicle.fromMap(json.decode(str));

String vehicleToMap(Vehicle data) => json.encode(data.toMap());

class Vehicle {
  Vehicle({
    @required this.id,
    @required this.width,
    @required this.height,
    @required this.url,
    @required this.photographer,
    @required this.photographerUrl,
    @required this.photographerId,
    @required this.src,
    @required this.liked,
  });

  int id;
  int width;
  int height;
  String url;
  String photographer;
  String photographerUrl;
  int photographerId;
  Src src;
  bool liked;

  factory Vehicle.fromMap(Map<String, dynamic> json) => Vehicle(
    id: json["id"],
    width: json["width"],
    height: json["height"],
    url: json["url"],
    photographer: json["photographer"],
    photographerUrl: json["photographer_url"],
    photographerId: json["photographer_id"],
    src: Src.fromMap(json["src"]),
    liked: json["liked"],
  );

  Map<String, dynamic> toMap() => {
    "id": id,
    "width": width,
    "height": height,
    "url": url,
    "photographer": photographer,
    "photographer_url": photographerUrl,
    "photographer_id": photographerId,
    "src": src.toMap(),
    "liked": liked,
  };
}

class Src {
  Src({
    @required this.original,
    @required this.large2X,
    @required this.large,
    @required this.medium,
    @required this.small,
    @required this.portrait,
    @required this.landscape,
    @required this.tiny,
  });

  String original;
  String large2X;
  String large;
  String medium;
  String small;
  String portrait;
  String landscape;
  String tiny;

  factory Src.fromMap(Map<String, dynamic> json) => Src(
    original: json["original"],
    large2X: json["large2x"],
    large: json["large"],
    medium: json["medium"],
    small: json["small"],
    portrait: json["portrait"],
    landscape: json["landscape"],
    tiny: json["tiny"],
  );

  Map<String, dynamic> toMap() => {
    "original": original,
    "large2x": large2X,
    "large": large,
    "medium": medium,
    "small": small,
    "portrait": portrait,
    "landscape": landscape,
    "tiny": tiny,
  };
}
