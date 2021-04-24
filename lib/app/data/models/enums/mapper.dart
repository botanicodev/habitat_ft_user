import 'media_type.dart';

abstract class Mapper {
  static MediaType intToMediaType(int value) {
    switch (value) {
      case 0:
        return MediaType.video;
      case 1:
        return MediaType.image;
      case 2:
        return MediaType.file;
      case 3:
        return MediaType.audio;
      default:
        print('No se encontro un indice para mapear un MediaType');
        return MediaType.audio;
    }
  }
}
