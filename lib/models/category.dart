import 'package:flutter/material.dart';

class CategoryModel {
  final String categoryID;
  final String categoryTitle;
  final String categoryimage;
  final Color categorycolor;

  CategoryModel(
      {required this.categoryID,
      required this.categoryTitle,
      required this.categoryimage,
      required this.categorycolor});
}
