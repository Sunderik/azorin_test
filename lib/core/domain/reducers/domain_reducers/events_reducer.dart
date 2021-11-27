import 'package:built_collection/built_collection.dart';
import 'package:built_redux/built_redux.dart';
import 'package:tecon_task/core/domain/domain.dart';
import 'package:tecon_task/core/domain/objects/models/notification.dart';
import 'package:tecon_task/core/network/models/not_sent_request_model.dart';
import 'package:tecon_task/core/services/files_workers/requests_saver_service.dart';
import 'package:tecon_task/injection.dart';

///Редьюсер для работы с сохраненными в офлайн режиме запросами
NestedReducerBuilder<AppState, AppStateBuilder, EventsState, EventsStateBuilder> createEventsReducer() {
  return NestedReducerBuilder<AppState, AppStateBuilder, EventsState, EventsStateBuilder>(
    (state) => state.eventsState,
    (builder) => builder.eventsState,
  )
    ..add<Notification>(EventsActionsNames.addNotification, _addNotification)
    ..add<Notification>(EventsActionsNames.removeNotification, _removeNotification)
    ..add<void>(EventsActionsNames.clearNotifications, _clearNotifications)
    ..add<NotSentRequestModel>(EventsActionsNames.addRequest, _addRequest)
    ..add<BuiltList<NotSentRequestModel>?>(EventsActionsNames.addRequests, _addRequests)
    ..add<NotSentRequestModel?>(EventsActionsNames.removeRequest, _removeRequest)
    ..add<List<NotSentRequestModel>?>(EventsActionsNames.update, _update)
    ..add<void>(EventsActionsNames.clearRequests, _clearRequests);
}

Future<void> _addNotification(
  EventsState state,
  Action<Notification> action,
  EventsStateBuilder builder,
) async {
  builder..notifications.add(action.payload);
}

Future<void> _clearNotifications(EventsState state, Action<void> action, EventsStateBuilder builder) async {
  builder..notifications.clear();
}

Future<void> _removeNotification(EventsState state, Action<Notification> action, EventsStateBuilder builder) async {
  builder..notifications.remove(action.payload);
}

Future<void> _addRequest(
  EventsState state,
  Action<NotSentRequestModel> action,
  EventsStateBuilder builder,
) async {
  builder..requests.add(action.payload);
  await injector.get<RequestsSaverService>().addElement(action.payload);
}

Future<void> _addRequests(
  EventsState state,
  Action<BuiltList<NotSentRequestModel>?> action,
  EventsStateBuilder builder,
) async {
  builder..requests.addAll(action.payload!);
  await injector.get<RequestsSaverService>().addElements(action.payload!.toList());
}

Future<void> _removeRequest(EventsState state, Action<NotSentRequestModel?> action, EventsStateBuilder builder) async {
  builder..requests.remove(action.payload!);
  await injector.get<RequestsSaverService>().removeElement(action.payload!);
}

Future<void> _update(EventsState state, Action<List<NotSentRequestModel>?> action, EventsStateBuilder builder) async {
  builder..requests.clear();
  builder..requests.addAll(action.payload!);
}

Future<void> _clearRequests(EventsState state, Action<void> action, EventsStateBuilder builder) async {
  builder..requests.clear();
  await injector.get<RequestsSaverService>().clearFile();
}
