import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:tecon_task/core/domain/global_state/serializers.dart';

part 'attached_file.g.dart';

abstract class AttachedFile
    implements Built<AttachedFile, AttachedFileBuilder> {
  String? get guid; // уникальный идентификатор файла

  String? get name; // имя файла

  String? get type; // тип файла

  String? get size; // размер файла с единицами измерения

  AttachedFile._();
  factory AttachedFile([void Function(AttachedFileBuilder) updates]) =
      _$AttachedFile;

  Map<String, dynamic>? toJson() {
    return serializers.serializeWith(AttachedFile.serializer, this)
        as Map<String, dynamic>;
  }

  static AttachedFile? fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(AttachedFile.serializer, json);
  }

  static Serializer<AttachedFile> get serializer => _$attachedFileSerializer;
}
