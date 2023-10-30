import 'package:flutter/material.dart';

class Communities extends StatelessWidget {
  const Communities({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: [
        SizedBox(
          height: 20,
        ),
        ListTile(
          leading: Stack(
            alignment: Alignment.bottomRight,
            children: [
              Container(
                height:70,
                width: 50,
                decoration: ShapeDecoration(
                  color: Colors.black.withOpacity(0.2),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Icon(Icons.groups_2_sharp , color: Colors.white,size: 30,),
              ),
              const CircleAvatar(
                radius: 10,
                child: Icon(Icons.add_circle_rounded, color: Color.fromARGB(255, 36, 120, 95)),
              )
            ],
          ),
          title: Text(
            "New community",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
           
        ),
      ],
    ));
  }
}
