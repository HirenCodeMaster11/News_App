import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:news_app/Controller/news%20controller.dart';
import 'package:news_app/View/Home%20Screen/Components/business.dart';
import 'package:news_app/View/Home%20Screen/Components/tesla.dart';
import 'package:news_app/View/Home%20Screen/Components/top.dart';

import 'Components/AppleNews.dart';
import 'Components/technology.dart';

NewsController newsController = Get.put(NewsController());

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        backgroundColor: Color(0xff18191B),
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: const Color(0xff242527),
          toolbarHeight: h * 0.06,
          title: Text(
            'News Time',
            style: TextStyle(color: Colors.white, fontSize: w * 0.056),
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
              CupertinoIcons.bell,
              size: w * 0.072,
              color: Colors.white,
            ),
            SizedBox(
              width: w * 0.05,
            ),
            Icon(
              CupertinoIcons.profile_circled,
              size: w * 0.072,
              color: Colors.white,
            ),
            SizedBox(
              width: w * 0.04,
            ),
          ],
          bottom: TabBar(
            indicatorColor: Colors.white,
            unselectedLabelStyle: TextStyle(
              fontSize: h * 0.0238,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
            automaticIndicatorColorAdjustment: false,
            labelStyle: TextStyle(
              fontSize: h * 0.0238,
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
            tabAlignment: TabAlignment.start,
            isScrollable: true,
            tabs: const [
              Tab(text: 'Top News'),
              Tab(text: 'Business'),
              Tab(text: 'Apple Company'),
              Tab(text: 'Tesla Company'),
              Tab(text: 'Technology'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            TopNews(),
            BusinessNews(),
            AppleNews(),
            TeslaNews(),
            TechNews(),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color(0xff1A1C1B),
          selectedItemColor: Colors.grey,
          unselectedItemColor: Colors.grey,
          selectedLabelStyle: TextStyle(color: Color(0xffE5E6EB),fontSize: w*0.035),
          unselectedLabelStyle: TextStyle(color: Color(0xffE5E6EB),fontSize: w*0.035),
          items: [
            BottomNavigationBarItem(
              backgroundColor: Colors.black,
              icon: Icon(
                Icons.home,
                color: Color(0xffE5E6EB),
                size: w * 0.08,
              ),
                label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.play_circle,
                color: Color(0xffE5E6EB),
                size: w * 0.08,
              ),
              label: 'Video',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.settings,
                color: Color(0xffE5E6EB),
                size: w * 0.08,
              ),
              label: 'Setting',
            ),
          ],
        ),
      ),
    );
  }
}
