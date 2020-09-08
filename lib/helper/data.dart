import 'package:flutter_Api/model/category_model.dart';

//  creating list of categories
List<CategoryModel> getCategory(){

  // creating new List
  List<CategoryModel> category = List<CategoryModel>();

  // creating new category model
  CategoryModel categoryModel = CategoryModel();
  categoryModel.categoryName = 'Business';
  categoryModel.imageUrl = 'https://images.unsplash.com/photo-1572883454114-1cf0031ede2a?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2468&q=80';
  category.add(categoryModel);

  categoryModel = CategoryModel();
  categoryModel.categoryName = 'Entertainment';
  categoryModel.imageUrl = 'https://images.unsplash.com/photo-1574968258139-6dd0c521eb6e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80';
  category.add(categoryModel);

  categoryModel = CategoryModel();
  categoryModel.categoryName = 'General';
  categoryModel.imageUrl = 'https://images.unsplash.com/photo-1566421740223-09d1ec4b6b78?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80';
  category.add(categoryModel);

  categoryModel = CategoryModel();
  categoryModel.categoryName = 'Sports';
  categoryModel.imageUrl = 'https://images.unsplash.com/photo-1566126171871-c9484441c4d1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80';
  category.add(categoryModel);

  categoryModel = CategoryModel();
  categoryModel.categoryName = 'Health';
  categoryModel.imageUrl = 'https://images.unsplash.com/photo-1476864264873-5d70f1045ff4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1296&q=80';
  category.add(categoryModel);

  categoryModel = CategoryModel();
  categoryModel.categoryName = 'Science';
  categoryModel.imageUrl = 'https://images.unsplash.com/photo-1566126171871-c9484441c4d1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80';
  category.add(categoryModel);

  categoryModel = CategoryModel();
  categoryModel.categoryName = 'technology';
  categoryModel.imageUrl = 'https://images.unsplash.com/photo-1591814540398-58332a4483a5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80';
  category.add(categoryModel);

  return category;

}




// https://images.unsplash.com/photo-1574968258139-6dd0c521eb6e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80
// https://images.unsplash.com/photo-1566421740223-09d1ec4b6b78?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80
// https://images.unsplash.com/photo-1566126171871-c9484441c4d1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80
// https://images.unsplash.com/photo-1591814540398-58332a4483a5?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=750&q=80
// https://images.unsplash.com/photo-1476864264873-5d70f1045ff4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1296&q=80
// https://images.unsplash.com/photo-1500916389037-576ad85790dc?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=668&q=80

