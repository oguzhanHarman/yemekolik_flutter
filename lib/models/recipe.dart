
class Recipe {
  final String id;
  final String title;
  final String cuisine;
  final String description;
  final List<String> ingredients;
  final List<String> steps;
  final String imagePath;

  const Recipe({
    required this.id,
    required this.title,
    required this.cuisine,
    required this.description,
    required this.ingredients,
    required this.steps,
    required this.imagePath,
  });
}
