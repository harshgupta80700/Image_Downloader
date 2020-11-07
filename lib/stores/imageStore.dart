import 'package:image_app/models/image_data_model.dart';
import 'package:mobx/mobx.dart';
part 'imageStore.g.dart';

class Images extends _Images with _$Images{
  static Images _instance;
  static Images getInstance(){
    if(_instance == null){
      _instance = new Images();
    }
    return _instance;
  }
}

abstract class _Images with Store{

  @observable
  bool isLoading = false;

  @observable
  ObservableList images = ObservableList<Images>();

  @action
  void toggleIsLoading(){
    isLoading = !isLoading;
  }

  @action
  void updateimages(List<Map<String,dynamic>> data){
    images.clear();
    data.forEach((element) {
      images.add(ImagesModel.fromMap(element));
    });
  }


}