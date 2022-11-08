import 'package:flutter/material.dart';

class ComponentSearchField extends StatelessWidget {
  const ComponentSearchField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      elevation: 0.0,
      shadowColor: Colors.transparent,
      pinned: true,
      backgroundColor: Colors.white,
      toolbarHeight: 0.0,
      collapsedHeight: 0.0,
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(66),
        child: Container(
            margin:
                const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
            height: 45.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                color: const Color(0xFFf4f4f4)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Icon(
                    Icons.search_rounded,
                    color: Colors.black,
                    size: 30.0,
                  ),
                ),
                Flexible(
                  child: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        hintStyle: TextStyle(fontSize: 14.0),
                        hintText: 'Plats, courses alimentaires, boissons'),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Icon(
                    Icons.tune,
                    color: Colors.black,
                    size: 25.0,
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
