class Todo {
  final String todo;
  final DateTime createdAt;
  Todo({
    required this.todo,
    required this.createdAt,
  });

  @override
  String toString() => 'Todo(todo: $todo, createdAt: $createdAt)';
}
