import 'package:built_value/built_value.dart';

part 'project_address.g.dart';

abstract class ProjectAddress
    implements Built<ProjectAddress, ProjectAddressBuilder> {
  String? get guid;

  String? get path;

  String? get httpPort;

  String? get instanceId;

  ProjectAddress._();

  factory ProjectAddress([void Function(ProjectAddressBuilder) updates]) =
      _$ProjectAddress;
}
