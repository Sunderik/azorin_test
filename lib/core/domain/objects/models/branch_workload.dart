import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:tecon_task/core/core.dart';

part 'branch_workload.g.dart';

/// Объект данных филиала.
abstract class BranchWorkload implements Built<BranchWorkload, BranchWorkloadBuilder> {
  /// Указывает все ли объекты загружены.
  bool? get allObjectsLoaded;

  /// Коллекция отделов филиала.
  BuiltList<DivisionWorkload>? get divisions;

  BranchWorkload._();
  factory BranchWorkload([void Function(BranchWorkloadBuilder) updates]) = _$BranchWorkload;
}
