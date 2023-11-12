
import 'package:flutter/material.dart';

class TaskListScreen extends StatelessWidget {

  const TaskListScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final colors = Theme.of(context).colorScheme;

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          
          centerTitle: false,
          leading: IconButton(icon: const Icon(Icons.menu), onPressed: (){

          }),
          title: const Text("Task Lisk View")
        ),
        body: ListView.builder(
          itemCount: 20,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 0),
              child: ListTile(
                leading: Icon( Icons.task_alt_outlined, color: colors.primary),
                trailing: Icon(Icons.arrow_forward_ios_rounded, color: colors.primary, size: 18),
                title: const Text("Tarea"),
                subtitle: const Row(
                  children: [
                    Icon(Icons.calendar_month, size: 15),
                    SizedBox(width: 12),
                    Text("Fecha : 2023-11-04")
                  ],
                ),
                // splashColor: colors.primary.withOpacity(.09),
              
                onTap: () {}
              ),
            );
          }, 
        ),
      ),
    );
  }
}