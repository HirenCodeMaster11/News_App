import 'package:flutter/material.dart';
import 'package:news_app/View/Home%20Screen/home%20screen.dart';

class TopNews extends StatelessWidget {
  const TopNews({super.key});

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xff18191B),
      body: FutureBuilder(
        future: newsController.fromMap(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final articles = newsController.newsModal?.articles;
            if (articles != null && articles.isNotEmpty) {
              return Padding(
                padding: const EdgeInsets.only(left: 16.0, right: 16, top: 12),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      ...List.generate(newsController.newsModal!.articles.length, (index) => Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              newsController.selectedN = index;
                              Navigator.of(context).pushNamed('/detail');
                            },
                            child: Container(
                              child: Column(
                                children: [
                                  Container(
                                    height: h * 0.23,
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(8),
                                        image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: NetworkImage(
                                                newsController.newsModal!.articles[index].urlToImage))),
                                  ),
                                  SizedBox(
                                    height: h * 0.02,
                                  ),
                                  Text(
                                    '${newsController.newsModal!.articles[index].author}',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: w * 0.05,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  SizedBox(
                                    height: h * 0.017,
                                  ),
                                  Text(
                                    '- ${newsController.newsModal!.articles[index].description}',
                                    textAlign: TextAlign.start,
                                    style: TextStyle(color: Colors.white, fontSize: w * 0.04),
                                  ),
                                  SizedBox(
                                    height: h * 0.016,
                                  ),
                                  Divider(
                                    height: h * 0.0005,
                                    color: Colors.grey,
                                  ),
                                  SizedBox(height: h * 0.014),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),)
                    ],
                  ),
                ),
              );
            } else {
              return const Center(
                child: Text('No articles found'),
              );
            }
          } else if (snapshot.hasError) {
            return Text('${snapshot.hasError}');
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}