import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyBottomSheet extends StatelessWidget {
  MyBottomSheet({Key? key, required this.onTap}) : super(key: key);

  final void Function(String) onTap;
  TextEditingController todoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey.shade300,
      height: 300,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              child: TextFormField(
                controller: todoController,
                decoration: InputDecoration(
                  hintText: "Write here your task",
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(
                      color: Colors.grey,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(
                      color: Colors.lightBlue,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            MaterialButton(
              color: Colors.lightBlue,
              onPressed: () {
                onTap(todoController.text);
              },
              child: const Text(
                "add",
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
