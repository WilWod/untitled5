class Recipe {
  final String name;
  final String images;

  Recipe({this.name, this.images});

  factory Recipe.fromJson(dynamic json) {

    return Recipe(

        name: json['answer'] as String,
        images: json['image'] as String);
  }

  static List<Recipe> recipesFromSnapshot(List snapshot) {
    return snapshot.map((data) {
      return Recipe.fromJson(data);
    }).toList();
  }

  @override
  String toString(){
    return 'Recipe {name: $name, image: $images}';
  }
}