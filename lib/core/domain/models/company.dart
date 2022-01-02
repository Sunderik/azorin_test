 import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
 import 'package:azorin_test/core/domain/serializers/serializers.dart';

part 'company.g.dart';

///
abstract class Company implements Built<Company, CompanyBuilder> {
  ///
  String? get name;

  ///
  String? get catchPhrase;

  ///
  String? get bs;

  Company._();
  ///
  factory Company([void Function(CompanyBuilder) updates]) = _$Company;
  ///
  Map<String, dynamic>? toJson() {
    return mainSerializers.serializeWith(Company.serializer, this) as Map<String, dynamic>;
  }
  ///
  static Company? fromJson(Map<String, dynamic> json) {
    return mainSerializers.deserializeWith(Company.serializer, json);
  }
  ///
  static Serializer<Company> get serializer => _$companySerializer;
}
