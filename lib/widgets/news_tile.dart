import 'package:flutter/material.dart';
import 'package:news_app_ui_setup/models/article_model.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({
    super.key,
    required this.articleModel,
  });

  final ArticleModel articleModel;

  @override
  Widget build(BuildContext context) {
    
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal:8.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: (articleModel.image==null || articleModel.image=='')?Image.network(
              'https://www.healthcareitnews.com/sites/hitn/files/Global%20healthcare_2.jpg',
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ):Image.network(
             articleModel.image! ,
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Text(
            // articleModel.title,
            articleModel.title,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              color: Colors.black87,
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            articleModel.subTitle!,
            maxLines: 1,
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            style:  TextStyle(color: Colors.grey[700], fontSize: 14),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 12.0,bottom: 8.0),
            child:  Divider(
              thickness: 0.7,
              
              color: Colors.grey[800],
            ),
          )
        ],
      ),
    );
  }
}
