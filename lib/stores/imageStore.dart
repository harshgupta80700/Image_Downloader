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
  ObservableList images = ObservableList<ImagesModel>();

  @action
  void toggleIsLoading(){
    isLoading = !isLoading;
  }

  @action
  void clearImages(){
    images.clear();
  }

  @action
  void updateimages(ImagesModel model){
    print(model.id);
    images.add(model);
    print(images.length);
  }


}