import 'package:async_redux/async_redux.dart';
import 'package:myspace_redux/src/di/di.dart';

import 'state.dart';

abstract class DefautAction extends ReduxAction<AppState> {
  T getDependency<T extends Object>() {
    return DependencyInjection.get<T>();
  }
}
