import 'package:built_value/built_value.dart';
import 'package:flutter/widgets.dart' show BuildContext, NavigatorState;

import '../data/routes.dart';

part 'app_route.g.dart';

abstract class AppRoute implements Built<AppRoute, AppRouteBuilder> {
  AppRoute._();

  factory AppRoute([updates(AppRouteBuilder buider)]) = _$AppRoute;

  Routes get route;

  String? get payload;

  String? get screenTitle;

  @BuiltValueField(serialize: false)
  BuildContext? get context;

  @BuiltValueField(serialize: false)
  NavigatorState? get navigatorState;

  @BuiltValueField(serialize: false)
  Object? get bundle;
}
