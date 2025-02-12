import 'dart:developer';

import 'package:async_redux/async_redux.dart';
import 'package:flutter/material.dart';
import 'package:myspace_redux/src/state.dart';

import 'di/di.dart';

class AppStore {
  const AppStore();

  void register<T extends Object>(T di) {
    DependencyInjection.register<T>(di);
  }

  Store<AppState> createStore() {
    log('Creating store...');
    return Store<AppState>(
      initialState: AppState(),
    );
  }
}

extension ContextHelperStore on BuildContext {
  T getDependency<T extends Object>() {
    return DependencyInjection.get<T>();
  }
}
