import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:task_manager/custom/colors.dart';

class ToDoItem extends StatelessWidget {
  final String taskName;
  final bool taskComplete;
  Function(bool?)? onChanged;
  Function(BuildContext)? deleteTaskFunction;

  ToDoItem(
      {super.key,
      required this.taskName,
      required this.taskComplete,
      required this.onChanged,
      required this.deleteTaskFunction});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25, right: 25, top: 25),
      child: Slidable(
        
        endActionPane: ActionPane(
          extentRatio: 0.2,
          motion: StretchMotion(),
          children: [
            SlidableAction(
              
              onPressed: deleteTaskFunction,
              icon: Icons.delete,
              backgroundColor: myMaroon,
              borderRadius: BorderRadius.circular(12),
            )
          ],
        ),
        child: Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
              color: myBlue, borderRadius: BorderRadius.circular(12)),
          child: Row(
            children: [
              Checkbox(
                value: taskComplete,
                onChanged: onChanged,
                activeColor: myMaroon,
              ),
              Text(taskName.capitalize(),
                  style: taskComplete
                      ? TextStyle(color: Colors.grey[300], fontSize: 12)
                      : const TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        )),
            ],
          ),
        ),
      ),
    );
  }
}

extension StringExtensions on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${this.substring(1)}";
  }
}
