import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/my_current_location.dart';
import 'package:food_delivery_app/components/my_description_box.dart';
import 'package:food_delivery_app/components/my_drawer.dart';
import 'package:food_delivery_app/components/my_sliver_appbar.dart';
import 'package:food_delivery_app/components/my_tab_bar.dart';
import 'package:food_delivery_app/models/food.dart';
// ignore: unused_import
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, Null Function()? onTap});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController =
        TabController(length: foodCategory.values.length, vsync: this);
    //return;
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   backgroundColor: Theme.of(context).colorScheme.secondary,
      //   toolbarHeight: 100,
      //   title: Text("HOME"),
      //   centerTitle: true,
      // ),
      drawer: MyDrawer(),
      body: NestedScrollView(
        headerSliverBuilder: (context, i) => [
          MySliverAppbar(
            title: Text('Name'),
            // MyTabBar(tabController: tabController),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 2),
                  child: Divider(
                    indent: 25,
                    endIndent: 25,
                    color: Theme.of(context).colorScheme.secondary,
                  ),
                ),
                Text("Hell0"),
                const MyCurrentLocation(),
                const MyDescriptionBox(),
                MyTabBar(tabController: _tabController)
              ],
            ),
          ),
        ],
        body: TabBarView(
          controller: _tabController,
          children: [
            ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Text("Hello");
                }),
            ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Text("coding");
                }),
            ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Text("testing");
                }),
            ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Text("coocking");
                }),
            ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Text("drinking");
                }),
          ],
        ),
      ),
    );
  }
}
