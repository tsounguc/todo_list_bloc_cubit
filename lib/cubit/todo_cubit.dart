import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../models/todo_model.dart';

class TodoCubit extends Cubit<List<Todo>> {
  TodoCubit() : super([]);
  void addTodo(String title) {
    if (title.isEmpty) {
      addError('Title cannot be empty!');
      return;
    }
    final todo = Todo(
      todo: title,
      createdAt: DateTime.now(),
    );
    state.add(todo);
    emit([...state]);
  }

  @override
  void onChange(Change<List<Todo>> change) {
    super.onChange(change);
    debugPrint("TodoCubit - $change");
  }

  @override
  void onError(Object error, StackTrace stackTrace) {
    super.onError(error, stackTrace);
    debugPrint("TodoCubit - $error");
  }
}
