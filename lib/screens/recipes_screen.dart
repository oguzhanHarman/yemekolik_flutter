import 'package:flutter/material.dart';
import '../models/recipe.dart';
import '../recipe_data.dart';

class RecipesScreen extends StatefulWidget {
  const RecipesScreen({Key? key}) : super(key: key);

  @override
  _RecipesScreenState createState() => _RecipesScreenState();
}

class _RecipesScreenState extends State<RecipesScreen> {
  // Arama çubuğu için kontrolcü
  final TextEditingController _searchController = TextEditingController();
  // Aranan terime göre filtreli liste
  List<Recipe> _filtered = allRecipes;

  @override
  void initState() {
    super.initState();
    _searchController.addListener(_filterRecipes);
  }

  // Filtreleme fonksiyonu
  void _filterRecipes() {
    final query = _searchController.text.toLowerCase();
    setState(() {
      _filtered = allRecipes.where((r) {
        return r.title.toLowerCase().contains(query)
            || r.cuisine.toLowerCase().contains(query);
      }).toList();
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tüm Tarifler'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          // 1. Arama Çubuğu
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _searchController,
              decoration: InputDecoration(
                hintText: 'Tarif veya mutfak ara',
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
          ),
          // 2. Liste
          Expanded(
            child: ListView.builder(
              itemCount: _filtered.length,
              itemBuilder: (context, index) {
                final recipe = _filtered[index];
                return ListTile(
                  leading: Image.asset(
                    recipe.imagePath,
                    width: 60,
                    height: 60,
                    fit: BoxFit.cover,
                  ),
                  title: Text(recipe.title),
                  subtitle: Text(recipe.cuisine),
                  trailing: const Icon(Icons.chevron_right),
                  onTap: () {
                    // detay ekranına geçiş
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
