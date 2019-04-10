import 'package:flutter_demo/actions/actions.dart';
import 'package:flutter_demo/models/app_state.dart';
import 'package:redux/redux.dart';

Future<Null> appMiddleware(
    Store<AppState> store, action, NextDispatcher next) async {
  print("*******action called  " + action.runtimeType.toString() + "  *****");

  switch (action.runtimeType) {
    case LoadingAction:
      print("In loading action");
      next(action);
      break;

    default:
      next(action);
  }
}
