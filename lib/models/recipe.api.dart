import 'dart:convert';
import 'package:untitled5/models/recipe.dart';
import 'package:http/http.dart' as http;

class RecipeApi {
  static Future<List<Recipe>> getRecipe() async {
    List _temp = [];
    for (int i = 0; i< 30; i++ ) {
      var url = Uri.https('yesno.wtf', '/api');
      print(1);
      final response = await http.get(url);

      Map data = jsonDecode(response.body);


      _temp.add(data);

    }
    return Recipe.recipesFromSnapshot(_temp);
  }
}