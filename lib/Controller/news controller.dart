import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

import '../Api Helper/api helper.dart';
import '../Modal/News Modal.dart';

class NewsController extends GetxController
{
  NewsModal? newsModal;
  ApiHelper apiHelper = ApiHelper();
  int selectedN = 0;
  void slectedNews()
  {
    selectedN;
    update();
  }

  void urlLaunch(String url){
    final Uri uri = Uri.parse(url);
    launchUrl(uri, mode: LaunchMode.inAppWebView);
  }

  Future<NewsModal?> BusinessMap()
  async {
    final data = await apiHelper.fetchApiBusiness();
    newsModal = NewsModal.fromJson(data);
    return newsModal;
  }
  Future<NewsModal?> AppleMap()
  async {
    final data = await apiHelper.fetchApiApple();
    newsModal = NewsModal.fromJson(data);
    return newsModal;
  }
  Future<NewsModal?> TeslaMap()
  async {
    final data = await apiHelper.fetchApiTesla();
    newsModal = NewsModal.fromJson(data);
    return newsModal;
  }
  Future<NewsModal?> TechMap()
  async {
    final data = await apiHelper.fetchApiTech();
    newsModal = NewsModal.fromJson(data);
    return newsModal;
  }
  Future<NewsModal?> fromMap()
  async {
    final data = await apiHelper.fetchApi();
    newsModal = NewsModal.fromJson(data);
    return newsModal;
  }

}