import 'package:flutter/material.dart';

class Calls extends StatelessWidget {
  const Calls({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          const ListTile(
            leading: CircleAvatar(
              child: Icon(
                Icons.link,
                color: Colors.white,
              ),
              backgroundColor: Color.fromARGB(255, 36, 120, 95),
              radius: 30,
            ),
            title: Text(
              "Create call link",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text("Share a link for your WhatsApp call"),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text(
                  "Recent",
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
            ],
          ),
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
          ].map(
            (e) => Container(
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
                    const Icon(
                      Icons.phone,
                      color: Color.fromARGB(255, 36, 120, 95),
                    )
                  ],
                ),
                titleTextStyle: Theme.of(context)
                    .textTheme
                    .titleMedium!
                    .copyWith(color: Colors.black, fontWeight: FontWeight.bold),
                subtitle: const Row(
                  children: [
                    Icon(
                      Icons.arrow_outward_sharp,
                      color: Color.fromARGB(255, 36, 120, 95),
                    ),
                    Text("October 16 , 2023")
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    ));
  }
}
