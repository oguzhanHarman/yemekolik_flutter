import 'package:flutter/material.dart';
import 'recipes_screen.dart';
import 'favorites_screen.dart';
import 'setting_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'login_screen.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});
  @override
  Widget _buildRecipeCard(String imageName, String title) {
    return Container(
      width: 120,
      margin: const EdgeInsets.only(right: 12),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              'assets/images/$imageName',
              width: 120,
              height: 90,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
  build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Yemekolik')),
      drawer: Drawer(
        child: ListView(
          children: [
            const DrawerHeader(child: Text('Hoşgeldiniz')),
            ListTile(
              leading: const Icon(Icons.list),
              title: const Text('Tüm Tarifler'),
              onTap: () => Navigator.of(context).push(
                MaterialPageRoute(builder: (_) => const RecipesScreen()),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.favorite),
              title: const Text('Favoriler'),
              onTap: () => Navigator.of(context).push(
                MaterialPageRoute(builder: (_) => const FavoritesScreen()),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text('Ayarlar'),
              onTap: () => Navigator.of(context).push(
                MaterialPageRoute(builder: (_) => const SettingsScreen()),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: const Text('Çıkış Yap'),
              onTap: () async {
                await FirebaseAuth.instance.signOut();
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (_) => const LoginScreen()),
                );
              },
            ),
          ],
        ),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hoşgeldiniz!',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const SizedBox(height: 20),
            Text(
              'Popüler Tarifler',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: 150,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  _buildRecipeCard("iskender_kebap.jpg", "İskender"),
                  _buildRecipeCard("butter_chicken.jpg", "Butter Chicken"),
                  _buildRecipeCard("samosa.jpg", "Samosa"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
