import 'package:image_picker/image_picker.dart';

class Helper{
  Future<String> imgFromCamera({int imageQuality=50}) async {
    XFile? image = await ImagePicker()
        .pickImage(source: ImageSource.camera, imageQuality: imageQuality);
    return image!.path;
  }

  Future<String> imgFromGallery({int imageQuality=50}) async {
    XFile? image = await ImagePicker()
        .pickImage(source: ImageSource.gallery, imageQuality: imageQuality);
    return image!.path;
  }

}