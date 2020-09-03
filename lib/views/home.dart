import 'package:api_data/helper/data.dart';
import 'package:api_data/helper/news.dart';
import 'package:api_data/model/articles_models.dart';
import 'package:api_data/model/category_model.dart';
import 'package:api_data/views/article_view.dart';
import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  //to show data from another screen to be displayed in the home page
  List<CategoryModel> categories = List<CategoryModel>();
  List<ArticleModel> articles = List<ArticleModel>();
  bool _loading = true;


  //call the init state to make show it data shows
  @override
  void initState() { 
    super.initState();
    // to get all categories from that function we define
    categories = getCategory();
    getNews();
  }

  getNews() async{
    News newsClass = News();
    await newsClass.getNews();
    articles = newsClass.blog;
    setState(() {
      _loading = false;
    });  
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Flutter',style: TextStyle(color: Colors.black)),
            Text('News', style: TextStyle(color: Colors.blue))
          ],
        ),
        elevation: 0.0,
      ),
       body: _loading ? Center(
         child: Container(
           child: CircularProgressIndicator(),
         ),
       ):Container(
         child: Column(
           children: <Widget>[

             /// for headlines
             Container(
               padding: EdgeInsets.fromLTRB(10, 0, 0, 10),
               height: 80,
               child: ListView.builder(
                 itemCount: categories.length,
                 shrinkWrap: true,
                 scrollDirection: Axis.horizontal,
                 itemBuilder: (BuildContext context, int index) {
                 return Padding(
                   padding: const EdgeInsets.only(right: 10.0),
                   child: ClipRRect(
                     borderRadius: BorderRadius.circular(10),
                      child: CategoryTile(
                       imageurl: categories[index].imageUrl,
                       title: categories[index].categoryName,
                     ),
                   ),
                 );
                },
               ),
             ),

             /// for blogs/articles parsing in the api data
             Expanded(
                            child: Container(
                 padding: EdgeInsets.only(left: 10, right: 10),
                 height: MediaQuery.of(context).size.height,
                  child: ListView.builder(
                    shrinkWrap: true,
                    //scrollDirection: Axis.vertical,
                    itemCount: articles.length,
                    itemBuilder: (context, index) {
                    return Blogtitle(
                      imageUrl: articles[index].urlToImage,
                      title: articles[index].title,
                      desc: articles[index].description,
                      url: articles[index].url,
                    );
                   },
                  ),
                ),
             )
           ],
         ),
       ),
    );
  }
}

class CategoryTile extends StatelessWidget {
  final imageurl, title;
  CategoryTile({this.imageurl, this.title});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){

      } ,
      child: Container(
        child: Stack(
          children: <Widget>[
            CachedNetworkImage(imageUrl: imageurl, fit: BoxFit.cover, width: 150, height: 80,),
            Container(
              color: Colors.black38,
              width: 150,
              height: 80,
              child: Center(child: Text(title, style: TextStyle( color: Colors.white, fontWeight: FontWeight.w500),)),
            )
          ],
        ),
      ),
    );
  }
}

class Blogtitle extends StatelessWidget {

  final String imageUrl, title, desc, url;
  Blogtitle({@required this.imageUrl, @required this.title, @required this.desc, this.url}); 

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context) => ArticleView()));
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 15),
        child: Column(
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(imageUrl)),
            Text(title,
              style: TextStyle(fontSize: 20, color: Colors.black87, fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 8,),
            Text(desc,
              style: TextStyle(fontSize: 14, color: Colors.black54, letterSpacing: .8),
            )
          ],
        ),
      ),
    );
  }
}