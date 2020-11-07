import 'dart:convert';
import 'package:image_app/api_data/api_key.dart';
import 'package:image_app/models/image_data_model.dart';
import 'package:image_app/stores/imageStore.dart';
import 'package:http/http.dart' as http;

class ImageServices{

  Images _images = Images.getInstance();

  Future getCuratedImages() async{
    _images.toggleIsLoading();
    var response = await http.get(BASE_URL + "/curated/?page=${pageNumber.toString()}&per_page=$PER_PAGE",headers: await _getHeaders());
    print(response.statusCode);
    try{
      if(response.statusCode==200){
        final Map<String, dynamic> body = json.decode(response.body);
        List<dynamic> images = body["photos"];
        images.forEach((element) {
          print("image url = " + element["url"]);
          _images.updateimages(ImagesModel.fromMap(element));
        });
        _images.toggleIsLoading();
      }
    }catch(e){
      print("error");
      _images.toggleIsLoading();
      print(e);
    }
  }

  Future<Map<String, String>> _getHeaders() async {
    final map = Map<String, String>.from({"Content-Type": "application/json"});
    map["Authorization"] = API_KEY;
    return map;
  }

}