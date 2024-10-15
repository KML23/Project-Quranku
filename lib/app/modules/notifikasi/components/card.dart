import 'package:flutter/material.dart';
import '../../../data/models/article.dart';

class CardArticle extends StatelessWidget {
  final Article article;
  const CardArticle({Key? key, required this.article}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.grey[800], // Set the background color to gray
      margin: const EdgeInsets.only(bottom: 15),
      child: ListTile(
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        leading: Hero(
          tag: article.urlToImage ?? article.title,
          child: SizedBox(
            width: 100,
            height: 100,
            child: article.urlToImage != null
                ? Image.network(
                    article.urlToImage!,
                    fit: BoxFit.cover,
                  )
                : Container(
                    color: Colors.grey,
                    child: const Center(
                      child: Text(
                        'No Image',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white), // Text color set to white
                      ),
                    ),
                  ),
          ),
        ),
        title: Text(
          article.title,
          style:
              const TextStyle(color: Colors.white), // Title color set to white
        ),
        subtitle: Text(
          article.author ?? 'Unknown',
          style: const TextStyle(
              color: Colors.white70), // Subtitle color set to white70
        ),
        onTap: () {
          // Handle the onTap action
        },
      ),
    );
  }
}
