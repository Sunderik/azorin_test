import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tecon_task/core/domain/objects/enums.dart';
import 'package:tecon_task/core/domain/objects/models/coordinates.dart';

part 'position_item.freezed.dart';

@freezed
class PositionItem with _$PositionItem {
  const factory PositionItem(
      {

      /// Тип ответа геолокатора
      PositionTypeEnum? type,

      /// Полученные координаты
      Coordinates? coordinates,

      /// Ответ геолокатора
      String? displayValue}) = _PositionItem;
}
