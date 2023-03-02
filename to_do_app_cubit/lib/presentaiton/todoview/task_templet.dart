import 'package:flutter/material.dart';

class MyTodoContainer extends StatelessWidget {

  const MyTodoContainer({Key? key, required this.todoName,required this.isDone}) : super(key: key);

  final String todoName;
  final bool isDone;

  @override
  Widget build(BuildContext context) {

    return  Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 2  ),

      margin:  const EdgeInsets.symmetric( vertical: 4  ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),

      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,

        children: [
          Text(todoName),

          Checkbox(
            value: isDone,
            shape: const CircleBorder(),
            onChanged: (val){
              
            },
          )
        ],
      ),
    );
  }
}
