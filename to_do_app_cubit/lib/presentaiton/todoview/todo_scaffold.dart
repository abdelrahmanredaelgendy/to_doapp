import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:to_do_app_cubit/presentaiton/todoview/app_title.dart';
import 'package:to_do_app_cubit/presentaiton/todoview/todo_bottomsheet.dart';
import '../todo_cubit/todo_cubit.dart';

// ignore: must_be_immutable
class TodoScaffold extends StatelessWidget {
  TodoScaffold({Key? key}) : super(key: key);

  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    TodoCubit cubit = TodoCubit.get(context);
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        elevation: 0,
        title: const AppTitle(),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 2),
        child: ListView.builder(
            itemCount: cubit.myTodos.length,
            itemBuilder: (context, index) {
              return cubit.myTodos[index];
            }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          scaffoldKey.currentState!.showBottomSheet((context) => MyBottomSheet(
                onTap: (String value) {
                  cubit.addTodo(value);
                },
              ));
        },
        child: const Icon(CupertinoIcons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
