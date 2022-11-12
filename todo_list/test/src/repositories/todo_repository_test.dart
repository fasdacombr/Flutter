import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:todo_list/src/repositories/todo_repository.dart';

class DioMock extends Mock implements Dio {

}

main() {
  final dio = DioMock();
  final repository = TodoRepository(client: dio);

  test("Deve trazer uma lista de TodoModel", () async {
     final list = await repository.fetchTodos();
     expect(list[4].title, 'laboriosam mollitia et enim quasi adipisci quia provident illum');
  });
}