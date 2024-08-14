import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http/http.dart';

class ApiHelper
{
  Future<Map> fetchApiTesla()
  async {
    Uri url = Uri.parse('https://newsapi.org/v2/everything?q=tesla&from=2024-07-14&sortBy=publishedAt&apiKey=8953b810599648c7a4c248504ba61535');

    Response response = await http.get(url);
    if(response.statusCode == 200)
    {
      final json = response.body;
      final Map data = jsonDecode(json);
      return data;
    }
    else {
      return {};
    }
  }


  Future<Map> fetchApiApple()
  async {
    Uri url = Uri.parse('https://newsapi.org/v2/everything?q=apple&from=2024-08-12&to=2024-08-12&sortBy=popularity&apiKey=8953b810599648c7a4c248504ba61535');

    Response response = await http.get(url);
    if(response.statusCode == 200)
    {
      final json = response.body;
      final Map data = jsonDecode(json);
      return data;
    }
    else {
      return {};
    }
  }

  Future<Map> fetchApiBusiness()
  async {
    Uri url = Uri.parse('https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=8953b810599648c7a4c248504ba61535');

    Response response = await http.get(url);
    if (response.statusCode == 200) {
      final json = response.body;
      final Map<String, dynamic> data = jsonDecode(json);
      return data;
    } else {
      throw Exception('Failed to load business news'); // Throw exception on failure
    }
  }

  Future<Map> fetchApiTech()
  async {
    Uri url = Uri.parse('https://newsapi.org/v2/top-headlines?sources=techcrunch&apiKey=8953b810599648c7a4c248504ba61535');

    Response response = await http.get(url);
    if(response.statusCode == 200)
    {
      final json = response.body;
      final Map data = jsonDecode(json);
      return data;
    }
    else {
      return {};
    }
  }
  Future<Map> fetchApi()
  async {
    Uri url = Uri.parse('https://newsapi.org/v2/everything?domains=wsj.com&apiKey=8953b810599648c7a4c248504ba61535');

    Response response = await http.get(url);
    if(response.statusCode == 200)
    {
      final json = response.body;
      final Map data = jsonDecode(json);
      return data;
    }
    else {
      return {};
    }
  }
}