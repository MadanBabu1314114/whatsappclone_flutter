import 'package:flutter/material.dart';
import 'package:flutter_floating_bottom_bar/flutter_floating_bottom_bar.dart';

import 'package:whatsappclone/screen/WhatsAppNavigationScreens/calls.dart';
import 'package:whatsappclone/screen/WhatsAppNavigationScreens/communities.dart';
import 'package:whatsappclone/screen/whatsAPpNavigationScreens/chats.dart';
import 'package:whatsappclone/screen/whatsAPpNavigationScreens/updates.dart';

class WhatsAppScreen extends StatefulWidget {
  const WhatsAppScreen({super.key});

  @override
  State<WhatsAppScreen> createState() => _WhatsAppScreenState();
}

class _WhatsAppScreenState extends State<WhatsAppScreen> {
  PageController? pageController;
  var currentPage;
  @override
  void initState() {
    currentPage = 0;
    pageController = PageController(initialPage: currentPage);
    super.initState();
  }

  void pageUpdate(int index) {
    setState(() {
      currentPage = index;
    });
    pageController!.animateToPage(
      index,
      duration: Duration(milliseconds: 10),
      curve: Curves.fastOutSlowIn,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 36, 120, 95),
          title: Text(
            "WhatsApp",
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .copyWith(color: Colors.white),
          ),
          actions: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Icon(
                Icons.camera_alt_outlined,
                size: 30,
                color: Colors.white,
              ),
            ),
            if (currentPage != 2)
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Icon(
                  Icons.search,
                  size: 30,
                  color: Colors.white,
                ),
              ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Icon(
                Icons.tune_outlined,
                size: 30,
                color: Colors.white,
              ),
            )
          ],
        ),
        body: BottomBar(
          curve: Curves.bounceOut,
          borderRadius: BorderRadius.circular(20),
          hideOnScroll: true,
          fit: StackFit.loose,
          duration: Duration(milliseconds: 200),
          body: (context, controller) {
            return PageView(
              controller: pageController,
              onPageChanged: (value) {
                pageUpdate(value);
              },
              children: [Chats(), Updates(), Communities(), Calls()],
            );
          },
          child: NavigationBar(
              indicatorShape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50)),
              selectedIndex: currentPage,
              onDestinationSelected: (value) {
                pageUpdate(value);
              },
              labelBehavior: NavigationDestinationLabelBehavior.alwaysShow,
              backgroundColor: Colors.white,
              surfaceTintColor: Colors.white,
              shadowColor: Colors.white60,
              elevation: 2,
              destinations: const [
                NavigationDestination(
                  icon: Icon(Icons.chat),
                  label: "Chats",
                ),
                NavigationDestination(
                  icon: Icon(Icons.update),
                  label: 'Updates',
                ),
                NavigationDestination(
                  icon: Icon(Icons.group),
                  label: "Commmunities",
                ),
                NavigationDestination(
                  icon: Icon(Icons.call),
                  label: "Calls",
                )
              ]),
        ));
  }
}
