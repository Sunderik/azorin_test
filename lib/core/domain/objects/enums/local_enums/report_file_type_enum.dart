import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';

part 'report_file_type_enum.g.dart';

class ReportFileTypeEnum extends EnumClass {
  /// *.xlsx - Excel
  static const ReportFileTypeEnum Xlsx = _$Xlsx;

  /// *.pdf - PDF
  static const ReportFileTypeEnum Pdf = _$Pdf;

  int get index => _index[this] ?? (throw StateError('No index for ReportFileTypeEnum.$name'));

  String get translates => _translates[this] ?? (throw StateError('No format for ReportFileTypeEnum.$name'));

  static const _index = const {
    Xlsx: 0,
    Pdf: 1,
  };

  static const _translates = const {
    Xlsx: 'xlsx',
    Pdf: 'pdf',
  };

  const ReportFileTypeEnum._(String name) : super(name);

  static BuiltSet<ReportFileTypeEnum> get values => _$reportFileTypeEnumValues;

  static ReportFileTypeEnum valueOf(String name) => _$reportFileTypeEnumValueOf(name);
}
