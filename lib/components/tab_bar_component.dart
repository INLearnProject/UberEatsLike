import 'package:flutter/material.dart';

class ComponentTabBar extends StatelessWidget {
  const ComponentTabBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      elevation: 0.0,
      floating: true,
      backgroundColor: Colors.white,
      toolbarHeight: 0.0,
      collapsedHeight: 0.0,
      bottom: PreferredSize(
          preferredSize: const Size.fromHeight(90),
          child: Column(
            children: [
              Container(
                  alignment: Alignment.bottomCenter,
                  width: 230.0,
                  child: TabBar(
                      splashBorderRadius: BorderRadius.circular(30.0),
                      indicatorSize: TabBarIndicatorSize.tab,
                      labelPadding: const EdgeInsets.all(7.0),
                      labelColor: Colors.white,
                      unselectedLabelStyle: const TextStyle(
                          fontSize: 15.0, fontWeight: FontWeight.w500),
                      unselectedLabelColor: Colors.black87,
                      indicator: BoxDecoration(
                          borderRadius: BorderRadius.circular(30.0),
                          color: Colors.black),
                      tabs: const [
                        Text('Livraison', style: TextStyle(fontSize: 18.0)),
                        Text('À emporter', style: TextStyle(fontSize: 18.0)),
                      ])),
              const SizedBox(height: 10.0),
              const Center(
                child: Text(
                  'Maintenant • Paris',
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w400),
                ),
              )
            ],
          )),
    );
  }
}
