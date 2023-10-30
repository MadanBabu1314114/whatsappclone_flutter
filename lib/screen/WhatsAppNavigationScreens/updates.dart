import 'package:flutter/material.dart';

class Updates extends StatelessWidget {
  const Updates({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Status",
                    style: Theme.of(context).textTheme.headlineSmall!),
                const Icon(
                  Icons.tune_outlined,
                  size: 30,
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const ListTile(
              leading: Stack(
                alignment: Alignment.bottomRight,
                children: [
                  CircleAvatar(
                    child: Icon(Icons.man_sharp),
                  ),
                  CircleAvatar(
                    radius: 10,
                    child: Icon(Icons.add_circle_rounded, color: Color.fromARGB(255, 36, 120, 95)),
                  )
                ],
              ),
              title: Text(
                "My Status",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Text("Tap to add status update"),
            ),
            Divider(),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Channels",
                    style: Theme.of(context)
                        .textTheme
                        .headlineSmall!
                        .copyWith(fontWeight: FontWeight.bold)),
                const Icon(
                  Icons.add,
                  size: 30,
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
                "Stay updates on topics that matter to you. Tap on the + to create your channel."),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                FilledButton(
                   style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Color.fromARGB(255, 36, 120, 95))),
                    onPressed: () {},
                    child: Text(
                      "Explore more",
                      style: TextStyle(color: Colors.white),
                    )),
              ],
            )
          ],
        ));
  }
}
