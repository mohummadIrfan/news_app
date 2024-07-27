import 'package:flutter/material.dart';
import 'package:news_app/shared/constant.dart';
import 'package:news_app/view/widget/list_view_widget.dart';

class CategoryWidget extends StatefulWidget {
  const CategoryWidget({super.key});

  @override
  State<CategoryWidget> createState() => _CategoryWidgetState();
}

class _CategoryWidgetState extends State<CategoryWidget>
    with SingleTickerProviderStateMixin {
  @override
  // ignore: override_on_non_overriding_member
  late TabController? controller;
  void initState() {
    controller =
        TabController(length: CategoryList.cateogryItems.length, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        TabBar(
          controller: controller,
          isScrollable: true,
          tabs: CategoryList.cateogryItems
              .map((e) => Container(
                    child: Text(e),
                  ))
              .toList(),
        ),
        Expanded(
          child: TabBarView(
            controller: controller,
            children: CategoryList.cateogryItems
                .map((e) => const listItems())
                .toList(),
          ),
        )
      ],
    ));
  }
}
