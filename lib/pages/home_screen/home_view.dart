import 'package:flutter/material.dart';

import '../../models/category.dart';
import 'custom_widget/category_item.dart';
import 'custom_widget/drawer_widget.dart';
import 'custom_widget/news_details_view.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  static const String routeName = "homeScreen";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<CategoryModel> category = [
    CategoryModel(
      categoryID: "sports",
      categoryTitle: "Sports",
      categoryimage: "assets/images/sports.png",
      categorycolor: const Color(0xffC91C22),
    ),
    CategoryModel(
      categoryID: "general",
      categoryTitle: "Politics",
      categoryimage: "assets/images/Politics.png",
      categorycolor: const Color(0xff003E90),
    ),
    CategoryModel(
      categoryID: "health",
      categoryTitle: "Health",
      categoryimage: "assets/images/health.png",
      categorycolor: const Color(0xffED1E79),
    ),
    CategoryModel(
      categoryID: "bussiness",
      categoryTitle: "Bussiness",
      categoryimage: "assets/images/bussines.png",
      categorycolor: const Color(0xffCF7E48),
    ),
    CategoryModel(
      categoryID: "environment",
      categoryTitle: "Environment",
      categoryimage: "assets/images/environment.png",
      categorycolor: const Color(0xff4882CF),
    ),
    CategoryModel(
      categoryID: "science",
      categoryTitle: "Science",
      categoryimage: "assets/images/science.png",
      categorycolor: const Color(0xff4882CF),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        image: DecorationImage(
          image: AssetImage("assets/images/pattern.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        drawer: DrawerCustomWidget(onCategoryClick: onDrawerCategoryClick),
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          title: Text(
            selectedCategory == null
                ? "News App"
                : selectedCategory!.categoryTitle,
          ),
        ),
        body: selectedCategory == null
            ? Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const Text(
                      "Pick your category \n of interest",
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff4F5A69),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Expanded(
                      child: GridView.builder(
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisExtent: 200,
                          crossAxisSpacing: 20,
                          mainAxisSpacing: 20,
                          childAspectRatio: 9 / 11,
                        ),
                        itemCount: category.length,
                        itemBuilder: (context, index) => CategoryItem(
                          categoryModel: category[index],
                          index: index,
                          onItemClick: onCategoryItemClick,
                        ),
                      ),
                    )
                  ],
                ),
              )
            : NewsDetailsView(categoryModel: selectedCategory!),
      ),
    );
  }

  CategoryModel? selectedCategory;

  onCategoryItemClick(CategoryModel categoryModel) {
    selectedCategory = categoryModel;
    setState(() {});
  }

  onDrawerCategoryClick() {
    selectedCategory = null;
    Navigator.pop(context);
    setState(() {});
  }
}
