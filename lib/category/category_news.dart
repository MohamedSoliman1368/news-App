import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newsnow/category/category_web_view.dart';
import 'package:newsnow/models/article_model.dart';

class categoryNews extends StatelessWidget {
  const categoryNews({
    super.key, required this.articleModel,
  });
final ArticleModel articleModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context){
              return WebView(url: articleModel.url ?? 'loading',);

            }));
          },
          child:
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.network(articleModel.image ?? 'https://t4.ftcdn.net/jpg/03/16/15/47/360_F_316154790_pnHGQkERUumMbzAjkgQuRvDgzjAHkFaQ.jpg',
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.fill,
                )
              ),


        ),
        SizedBox(
          height: 5,
        ),
        Text(articleModel.title ?? 'loading',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,

          ),),
        SizedBox(
          height: 5,
        ),
        Text(articleModel.suptitle ?? 'loading',
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 14,
            color: Colors.grey,
          ),),
      ],
    );
  }
}