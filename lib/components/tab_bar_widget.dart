import 'package:flutter/material.dart';

class TabBarWidget extends StatelessWidget {
  const TabBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return DefaultTabController(
      length: 4,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: Colors.white,
            height: h * .035,
            child: TabBar(
              unselectedLabelColor: Colors.red,
              labelColor: Colors.white,
              dividerColor: Colors.white,
              indicator: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(19),
              ),
              labelPadding: EdgeInsets.symmetric(horizontal: w * .030),
              tabs: const [
                TabItem(title: "Breakfast"),
                TabItem(title: "Lunch"),
                TabItem(title: "Dinner"),
                TabItem(title: "Snack"),
              ],
            ),
          ),
          SizedBox(
            height: h * .02,
          ),
          SizedBox(
            height: h * .3,
            child: const TabBarView(
              children: [],
            ),
          )
        ],
      ),
    );
  }
}

class TabItem extends StatelessWidget {
  final String title;
  const TabItem({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.red,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Center(
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 9.8,
            ),
          ),
        ),
      ),
    );
  }
}

class HomeTabBarView extends StatelessWidget {
  final String recipe;
  const HomeTabBarView({
    super.key,
    required this.recipe,
  });

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return SizedBox(
      height: h * .28,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {},
        separatorBuilder: (context, index) {
          return const SizedBox(
            width: 15,
          );
        },
        itemCount: 3,
      ),
    );
  }
}
