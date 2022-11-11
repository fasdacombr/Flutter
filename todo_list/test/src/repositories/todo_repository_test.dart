import 'package:flutter_test/flutter_test.dart';
import 'package:todo_list/src/repositories/todo_repository.dart';

main() {
  final repository = TodoRepository();

  test("Deve trazer uma lista de TodoModel", () async {
     final list = await repository.fetchTodos();
     expect(list[4].title, 'laboriosam mollitia et enim quasi adipisci quia provident illum');
  });
}