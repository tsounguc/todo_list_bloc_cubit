import 'package:flutter_bloc/flutter_bloc.dart';

import '../models/todo_model.dart';

class TodoCubit extends Cubit<List<Todo>> {
  TodoCubit() : super([]);
  void addTodo(String title) {
    final todo = Todo(
      todo: title,
      createdAt: DateTime.now(),
    );
    state.add(todo);
    emit([...state]);
  }
}
