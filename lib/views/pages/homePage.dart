import 'package:ecommerce_app/views/widgets/catogeryTabPage.dart';
import 'package:ecommerce_app/views/widgets/homeTabPage.dart';
import 'package:flutter/material.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});
  @override
  State<StatefulWidget> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
      return const DefaultTabController(
        length: 2, 
        child: Column(
          children: [
            TabBar(dividerHeight: 3, tabs: [ Tab(text: "Home",), Tab(text: "Category",) ],),
            Expanded(child: TabBarView(children: [homeTabPage(), catogeryTabPage()],))
          ],
        ),
        
      );
  }
}
