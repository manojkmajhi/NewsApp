import 'dart:convert';
import 'package:assignment4/home/model/news_modal.dart';
import 'package:http/http.dart' as http;

class ApiService {
  Future<List<Articles>?> fetchAlbums() async {
    try {
      await Future.delayed(const Duration(seconds: 3));
      final response = await http.get(
        Uri.parse(
            'https://saurav.tech/NewsAPI/top-headlines/category/health/in.json'),
      );

      if (response.statusCode == 200) {
        // return News.fromJson(
        //     jsonDecode(response.body) as Map<String, dynamic>);
        final data = jsonDecode(response.body);

        final List datalist = data['articles'];
        return datalist.map((element) => Articles.fromJson(element)).toList();
      }
    } catch (e) {
      throw Exception(e.toString());
    }
    return null;
  }
}
