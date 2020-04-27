import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:fluttertodostutorial/blocs/tab/tab.dart';
import 'package:fluttertodostutorial/models/models.dart';

class TabBloc extends Bloc<TabEvent, AppTab> {
  @override
  AppTab get initialState => AppTab.todos;

  @override
  Stream<AppTab> mapEventToState(TabEvent event) async* {
    if (event is TabUpdated) {
      yield event.tab;
    }
  }
}