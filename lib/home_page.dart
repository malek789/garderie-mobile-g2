import 'package:flutter/material.dart';

final List<Map<String, dynamic>> menus = [
  {"id": 1, "titre": "Petit déjeuner", "description": "Lait, céréales et fruits", "icone": "🥣"},
  {"id": 2, "titre": "Déjeuner", "description": "Poulet, riz et légumes", "icone": "🍲"},
  {"id": 3, "titre": "Goûter", "description": "Biscuit et compote de pomme", "icone": "🍪"},
  {"id": 4, "titre": "Jus de fruits", "description": "Jus d'orange naturel", "icone": "🍊"},
  {"id": 5, "titre": "Fruits frais", "description": "Une sélection de fruits de saison", "icone": "🍎"},
];

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ma Garderie'),
        actions: [
          IconButton(icon: const Icon(Icons.search), onPressed: () {}),
          IconButton(icon: const Icon(Icons.notifications), onPressed: () {}),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          children: const [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text('Ma Garderie',
                  style: TextStyle(color: Colors.white, fontSize: 24)),
            ),
            ListTile(leading: Icon(Icons.home), title: Text('Accueil')),
            ListTile(leading: Icon(Icons.restaurant_menu), title: Text('Menus')),
            ListTile(leading: Icon(Icons.info), title: Text('À propos')),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(16, 16, 16, 4),
            child: Text('Menus du jour',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
          ),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.all(12),
              itemCount: menus.length,
              itemBuilder: (context, index) {
                final m = menus[index];
                return Card(
                  child: ListTile(
                    leading: Text(m['icone'], style: const TextStyle(fontSize: 32)),
                    title: Text(m['titre']),
                    subtitle: Text(m['description']),
                    trailing: const Icon(Icons.chevron_right),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}