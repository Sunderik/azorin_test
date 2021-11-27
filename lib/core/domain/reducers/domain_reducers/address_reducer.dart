import 'package:built_collection/built_collection.dart';
import 'package:built_redux/built_redux.dart';
import 'package:tecon_task/core/domain/domain.dart';

NestedReducerBuilder<AppState, AppStateBuilder, AddressState, AddressStateBuilder> createAddressReducer() {
  return NestedReducerBuilder<AppState, AppStateBuilder, AddressState, AddressStateBuilder>(
    (state) => state.addressState,
    (builder) => builder.addressState,
  )..add(AddressAppActionsNames.setProjectAddress, _setProjectAddress);
}

void _setProjectAddress(AddressState state, Action<BuiltList<ProjectAddress>> action, AddressStateBuilder builder) {
  builder.projectAddressList.replace(action.payload);
}
