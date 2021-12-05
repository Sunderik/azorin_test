import 'package:azorin_test/core/domain/domain.dart';
import 'package:built_redux/built_redux.dart';

import '../../logger.dart';

final application = [
  AppActionsNames.clearState,
];

final login = [];

final home = [];

final taskDetailsActions = [];

final performance = [
  ...db,
];

final db = [
  // DbActionsNames.saveAttachment
];

final ignore = [];
final printPayload = [];

bool printWithPayload(action) => printPayload.map((e) => e.name).contains(action.name);
bool ignorePrint(action) => ignore.map((e) => e.name).contains(action.name);

NextActionHandler loggingMiddleware(MiddlewareApi api) {
  late int start, end;

  return (ActionHandler next) {
    return (Action action) {
      assert(() {
        if (performance.map((e) => e.name).contains(action.name)) {
          start = DateTime.now().millisecondsSinceEpoch;
        }
        return true;
      }());

      next(action);

      assert(() {
        if (performance.map((e) => e.name).contains(action.name)) {
          end = DateTime.now().millisecondsSinceEpoch;
          logger
              .i('profile performance ${action.name} ms: ${end - start}  length: ${action.payload.toString().length}');
        }
        return true;
      }());

      assert(() {
        if (printWithPayload(action)) {
          logger.i('Action: ${action.name} ${action.payload.toString()}');
        } else if (!ignorePrint(action)) {
          logger.i('Action: ${action.name}');
        }

        return true;
      }());
    };
  };
}
