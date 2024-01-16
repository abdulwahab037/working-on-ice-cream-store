import 'package:dount_app/screen/my_tabs.dart';
import 'package:flutter/material.dart';

import '../tabs/burger_tab.dart';
import '../tabs/dount_tab.dart';
import '../tabs/pancake_tab.dart';
import '../tabs/pizza_tab.dart';
import '../tabs/smothie_tab.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Widget> myTabs = const [
    MyTabs(
      iconPath: 'lib/img/donuta.png',
    ),
    MyTabs(
      iconPath: 'lib/img/donutb.png',
    ),
    MyTabs(
      iconPath: 'lib/img/donutc.png',
    ),
    MyTabs(
      iconPath: 'lib/img/donuta.png',
    ),
    MyTabs(
      iconPath: 'lib/img/donutb.png',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: myTabs.length,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            leading: Padding(
              padding: const EdgeInsets.only(left: 24.0),
              child: IconButton(
                icon: Icon(
                  Icons.menu,
                  color: Colors.grey[800],
                  size: 36,
                ),
                onPressed: () {},
              ),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 24.0),
                child: IconButton(
                  icon: Icon(
                    Icons.person,
                    color: Colors.grey[800],
                    size: 36,
                  ),
                  onPressed: () {},
                ),
              )
            ],
          ),
          body: Column(
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 32, vertical: 18),
                child: Row(
                  children: [
                    Text(
                      'I want to ',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 24,
                      ),
                    ),
                    Text(
                      'Eat',
                      style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          color: Colors.cyan),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              TabBar(tabs: myTabs),
              Expanded(
                  child: TabBarView(children: [
                DountTab(),
                const BurgerTab(),
                const SmothieTab(),
                const PancakeTab(),
                const PizzaTab(),
              ]))
            ],
          ),
        ));
  }
}
