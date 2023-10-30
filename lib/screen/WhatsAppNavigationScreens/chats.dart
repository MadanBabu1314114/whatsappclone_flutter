import 'package:flutter/material.dart';

class Chats extends StatelessWidget {
  const Chats({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: SingleChildScrollView(
          child: Column(
              children: [
          ...[
            Icons.abc_sharp,
            Icons.youtube_searched_for_rounded,
            Icons.access_time,
            Icons.work_outline_sharp,
            Icons.accessible_forward,
            Icons.accessible_forward_sharp,
            Icons.accessible_forward,
            Icons.abc_sharp,
            Icons.youtube_searched_for_rounded,
            Icons.access_time,
            Icons.work_outline_sharp,
            Icons.accessible_forward,
            Icons.accessible_forward_sharp,
            Icons.accessible_forward
          ].map((e) => Container(
                margin: EdgeInsets.symmetric(vertical: 4),
                child: ListTile(
                  leading: CircleAvatar(
                    child: Icon(e),
                    radius: 30,
                  ),
                  title: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                       Text(e.toString(), textAlign: TextAlign.start),
                       Text("Today" , style: Theme.of(context).textTheme.labelSmall,)
                    ],
                  ),
                  titleTextStyle: Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .copyWith(color: Colors.black, fontWeight: FontWeight.bold),
                  subtitle: Row(
                    children: [Icon(Icons.task_alt), Text("Hello")],
                  ),
                ),
              ))
              ],
            ),
        ));
  }
}
