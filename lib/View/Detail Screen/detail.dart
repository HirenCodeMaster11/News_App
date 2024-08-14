import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/View/Home%20Screen/Components/business.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xff18191B),
      appBar: AppBar(
        backgroundColor: const Color(0xff242527),
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            CupertinoIcons.left_chevron,
            color: Colors.white,
            size: w * 0.07,
          ),
        ),
        actions: [
          Container(
            height: h * 0.035,
            width: w * 0.23,
            decoration: BoxDecoration(
                color: Color(0xff242527),
                border: Border.all(color: Colors.white, width: 1),
                borderRadius: BorderRadius.circular(6)),
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(
                  Icons.newspaper,
                  color: Colors.white,
                  size: w * 0.05,
                ),
                Text(
                  'E-NEWS',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                      fontSize: w * 0.034),
                ),
              ],
            ),
          ),
          SizedBox(
            width: w * 0.05,
          ),
          Icon(
            CupertinoIcons.share,
            color: Colors.white,
            size: w * 0.067,
          ),
          SizedBox(
            width: w * 0.03,
          ),
          Icon(
            CupertinoIcons.bookmark,
            color: Colors.white,
            size: w * 0.067,
          ),
          SizedBox(
            width: w * 0.03,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 16.0, right: 16, top: 12),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Text(
                newsController
                    .newsModal!.articles[newsController.selectedN].title,
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: w * 0.06),
              ),
              SizedBox(
                height: h * 0.02,
              ),
              Text(
                newsController
                    .newsModal!.articles[newsController.selectedN].description,
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: w * 0.04),
              ),
              SizedBox(
                height: h * 0.018,
              ),
              Text(
                'Author : ${newsController.newsModal!.articles[newsController.selectedN].author}',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: w * 0.05),
              ),
              SizedBox(
                height: h * 0.02,
              ),
              Container(
                height: 230,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(newsController.newsModal!
                            .articles[newsController.selectedN].urlToImage))),
              ),
              SizedBox(
                height: h * 0.02,
              ),
              Text(
                newsController
                    .newsModal!.articles[newsController.selectedN].content,
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: w * 0.045),
              ),
              SizedBox(
                height: h * 0.02,
              ),
              Center(
                child: GestureDetector(
                  onTap: () {
                    newsController.urlLaunch(newsController
                        .newsModal!.articles[newsController.selectedN].url);
                  },
                  child: Container(
                    height: h * 0.045,
                    width: w * 0.3,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      'SHOW MORE',
                      style: TextStyle(
                          fontSize: w * 0.04, fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: h * 0.02,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
