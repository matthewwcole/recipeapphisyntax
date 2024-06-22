import 'dart:convert';
import 'package:http/http.dart' as http;

class ConstantFunction {
  static Future<List<Map<String, dynamic>>> getResponse() async {
    String api =
        "https://api.edamam.com/api/recipes/v2?type=public&app_id=ab54ad2b&app_key=97ea5d9f58727a2a1af95a59750c902a";
    final response = await http.get(Uri.parse(api));
    List<Map<String, dynamic>> recipe = [];
    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);

      if (data['hits'] != null) {
        for (var hit in data['hits']) {
          recipe.add(hit['recipe']);
        }
      }
      return recipe;
    }
    return recipe;
  }
}
