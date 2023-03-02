import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:to_do_app_cubit/presentaiton/todo_cubit/todo_cubit.dart';
import 'package:to_do_app_cubit/presentaiton/todo_cubit/todo_state.dart';
import 'package:to_do_app_cubit/presentaiton/todoview/todo_scaffold.dart';

class TodoScreen extends StatelessWidget {
  const TodoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create:(context) => TodoCubit()
          ..init(),
      child: const TodoConsumer(),
    );
  }
}

class TodoConsumer extends StatelessWidget {
  const TodoConsumer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<TodoCubit, TodoStates>(
      listener: (context, state) {},
      builder: (context, state) => TodoScaffold(),
    );
  }
}
