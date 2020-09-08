import 'package:flutter_Api/model/articles_models.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';


class News{

  // creating a list of articles from api
  List<ArticleModel> blog = [];

  Future<void> getNews() async {

    // saving the the api url
  String url = 'http://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=6848890195cc408ebb0e083255ffee7a';

  var response  = await http.get(url);

  var jsonData = jsonDecode(response.body);

  if (jsonData["status"] == "ok"){
    jsonData["articles"].forEach((element){

      if(element["urlToImage"] != null && element["description"] != null){

        ArticleModel articleModel = ArticleModel(

          // saving api properties to element
          title: element['title'],
          author: element['author'],
          url: element['url'],
          urlToImage: element['urlToImage'],
          description: element['description'],
          content: element['content'],

        );
      
        blog.add(articleModel);
      }
    });
  }

  }
}