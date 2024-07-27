import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/controller/news_controller/news_controller.dart';
import 'package:news_app/view/widget/category_widget.dart';

import '../widget/home_widget.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  final controller = Get.put(NewsControler());
  final pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('News App'),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                controller.changeThemeMode();
              },
              icon: Icon(controller.iconTheme()))
        ],
      ),
      body: PageView(
        onPageChanged: (index) {
          controller.changeNavBar(currentIndex: index);
        },
        controller: pageController,
        children: [HomeWidget(), CategoryWidget()],
      ),
      bottomNavigationBar: GetBuilder<NewsControler>(builder: (controller) {
        return BottomNavigationBar(
            currentIndex: controller.index,
            onTap: (index) {
              controller.changeNavBar(currentIndex: index);
              pageController.jumpToPage(index);
            },
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home_max_outlined,
                  ),
                  activeIcon: Icon(Icons.home),
                  label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.category_outlined,
                  ),
                  activeIcon: Icon(Icons.category),
                  label: 'Category')
            ]);
      }),
    );
  }
}
