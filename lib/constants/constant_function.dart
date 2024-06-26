import 'dart:convert';
import 'package:http/http.dart' as http;

class ConstantFunction {
  static Future<List<Map<String, dynamic>>> getResponse(
      String findRecipe) async {
    String id = 'ab54ad2b';
    String key = '97ea5d9f58727a2a1af95a59750c902a';

    String api =
        "https://api.edamam.com/search?q=$findRecipe&app_id=$id&app_key=$key&from=0&to=3&calories=591-722&health=alcohol-free";
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
