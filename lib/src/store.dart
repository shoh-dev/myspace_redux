import 'package:async_redux/async_redux.dart';
import 'package:myspace_redux/src/environment.dart';
import 'package:myspace_redux/src/state.dart';

class AppStore {
  final AppState state;
  final Environment? env;

  const AppStore({
    required this.state,
    this.env,
  });

  Store<AppState> createStore() {
    return Store<AppState>(
      initialState: state,
      environment: env,
    );
  }
}
