import 'package:async_redux/async_redux.dart';
import 'package:myspace_redux/src/environment.dart';

import 'state.dart';

abstract class DefautAction extends ReduxAction<AppState> {
  @override
  Environment? get env => super.env as Environment?;
}
