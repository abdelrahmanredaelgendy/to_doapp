import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:to_do_app_cubit/presentaiton/todo_cubit/todo_state.dart';
import 'package:to_do_app_cubit/presentaiton/todoview/task_templet.dart';
import '../../data/local_database.dart';


class TodoCubit extends Cubit<TodoStates>{
  TodoCubit() : super(TodoInitialState());

  static TodoCubit get(context) => BlocProvider.of(context);

  MyLocalDatabase myDb = MyLocalDatabase();


  init()async{
    await myDb.openMyDatabase();
    getMyTodos();
  }

  int todoNum = 1;

  addTodo(String todData)async{
    Task newTask = Task(0, todData, 0);
    await myDb.addTask(newTask);
    getMyTodos();
    emit(AddTodoState());
  }

  getMyTodos()async{

    List<Task> myTasks = await myDb.getTasks();
    myTasks = myTasks.reversed.toList();
    myTodos = [];
    for(var task in myTasks){
      myTodos.add(
          MyTodoContainer(
            todoName: task.data,
            isDone: task.isDone == 1,

          ),
      );
    }

    emit(GetTodoState());
  }



  List<Widget> myTodos=[];


}