import 'package:flutter/material.dart';

import '../../../models/category.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    super.key,
    required this.categoryModel,
    required this.index,
    required this.onItemClick,
  });

  final CategoryModel categoryModel;
  final int index;
  final Function onItemClick;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return InkWell(
      onTap: () {
        onItemClick(categoryModel);
      },
      child: Container(
        decoration: BoxDecoration(
          color: categoryModel.categorycolor,
          borderRadius: BorderRadius.only(
            topLeft: const Radius.circular(25),
            topRight: const Radius.circular(25),
            bottomLeft: index % 2 == 0
                ? const Radius.circular(25)
                : const Radius.circular(0),
            bottomRight: index % 2 == 0
                ? const Radius.circular(0)
                : const Radius.circular(25),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(categoryModel.categoryimage),
            Text(
              categoryModel.categoryTitle,
              style: theme.textTheme.titleMedium,
            ),
          ],
        ),
      ),
    );
  }
}
