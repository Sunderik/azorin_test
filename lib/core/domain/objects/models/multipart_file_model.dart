import 'dart:typed_data';

import 'package:built_value/built_value.dart';

part 'multipart_file_model.g.dart';

abstract class MultipartFileModel implements Built<MultipartFileModel, MultipartFileModelBuilder> {
  String? get field;

  Uint8List? get bytes;

  String? get filename;

  MultipartFileModel._();

  factory MultipartFileModel([void Function(MultipartFileModelBuilder) updates]) = _$MultipartFileModel;
}
