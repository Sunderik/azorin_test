import 'dart:ui';

extension StringExtension on String {
  /// Возвращает цвет из строки формата '#FFRRGGBB'.
  Color hexToColor() {
    return new Color(int.parse(this.replaceFirst(RegExp(r'#'), '0x')));
  }
}
