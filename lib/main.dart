import 'package:flutter/material.dart';

import 'custom.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      useMaterial3: true,
    ),
    home: const HomePage(),
    debugShowCheckedModeBanner: false,
  ));
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> items = [
    'K2 DESIGNERS(3)',
    'V DEV FASHION(2)',
    'Item 3',
    'Item 4',
    'Item 5',
    'Item 6',
    'Item 7',
    'Item 8',
    'Item 9',
    'Item 10',
    'Item 3',
    'Item 4',
    'Item 5',
    'Item 6',
    'Item 7',
    'Item 8',
    'Item 9',
    'Item 10',
  ];

  final List<String> iconPath = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(kToolbarHeight),
        child: CustomAppBar(),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (BuildContext context, int index) {
                IconData iconData =
                    index % 2 == 0 ? Icons.add_chart : Icons.insert_chart;

                return Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 3),
                  child: Card(
                    elevation: 2,
                    shadowColor: Colors.grey[200],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                      side: const BorderSide(width: 1, color: Colors.grey),
                    ),
                    child: ListTile(
                      contentPadding: const EdgeInsets.symmetric(
                        horizontal: 16,
                      ),
                      leading: Icon(iconData,
                          color: const Color(0xff5654a2), size: 36),
                      title: Text(
                        items[index],
                        style: const TextStyle(
                          color: Colors.black87,
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                      ),
                      subtitle: const Text(
                        'Tap to view details',
                        style: TextStyle(color: Colors.grey),
                      ),
                      trailing: const Icon(Icons.arrow_forward_ios,
                          color: Colors.grey),
                      onTap: () {
                        print('Tapped on ${items[index]}');
                      },
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color(0xff5654a2),
        child: const Icon(
          Icons.refresh_sharp,
          color: Colors.white,
        ),
      ),
    );
  }
}
