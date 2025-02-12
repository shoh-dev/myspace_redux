import 'package:async_redux/async_redux.dart';
import 'package:flutter/material.dart';

import 'state.dart';
import 'store.dart';

class AppStoreProvider extends StatelessWidget {
  final Widget child;
  final AppStore? appStore;

  const AppStoreProvider({
    super.key,
    this.appStore,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return StoreProvider<AppState>(
      store: appStore?.createStore() ?? AppStore().createStore(),
      child: child,
    );
  }
}
