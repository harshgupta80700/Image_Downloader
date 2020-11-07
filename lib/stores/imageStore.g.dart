// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'imageStore.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$Images on _Images, Store {
  final _$isLoadingAtom = Atom(name: '_Images.isLoading');

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  final _$imagesAtom = Atom(name: '_Images.images');

  @override
  ObservableList<dynamic> get images {
    _$imagesAtom.reportRead();
    return super.images;
  }

  @override
  set images(ObservableList<dynamic> value) {
    _$imagesAtom.reportWrite(value, super.images, () {
      super.images = value;
    });
  }

  final _$_ImagesActionController = ActionController(name: '_Images');

  @override
  void toggleIsLoading() {
    final _$actionInfo =
        _$_ImagesActionController.startAction(name: '_Images.toggleIsLoading');
    try {
      return super.toggleIsLoading();
    } finally {
      _$_ImagesActionController.endAction(_$actionInfo);
    }
  }

  @override
  void clearImages() {
    final _$actionInfo =
        _$_ImagesActionController.startAction(name: '_Images.clearImages');
    try {
      return super.clearImages();
    } finally {
      _$_ImagesActionController.endAction(_$actionInfo);
    }
  }

  @override
  void updateimages(ImagesModel model) {
    final _$actionInfo =
        _$_ImagesActionController.startAction(name: '_Images.updateimages');
    try {
      return super.updateimages(model);
    } finally {
      _$_ImagesActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isLoading: ${isLoading},
images: ${images}
    ''';
  }
}
