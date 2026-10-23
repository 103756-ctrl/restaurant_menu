import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      title: 'Restaurant Menu',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        primarySwatch: Colors.deepOrange,
      ),
      home: MyHomePage(),
    );
  }
}

// This widget is the home page of your application.
class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Row(
          children: [
          Image.asset(
          'assets/walkingpizza.mp4',
          width: 40,
          height: 40,
        ),
    const SizedBox(width: 12),
    const Text(
    'Restaurant Menu',
    style: TextStyle(
    color: Colors.white,
    fontSize: 24.0,
    fontFamily: 'MomoSignature',
    ),
    ),
    ],
    ),
    backgroundColor: Colors.deepOrange,
    ),
      body: Column(
        children: [
          // Card 1: Vegetable Pizza
          Card(
            elevation: 5, // Shadow depth
            color: Colors.orange,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: InkWell(
              borderRadius: BorderRadius.circular(15),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const FoodDetailScreen(
                      foodName: 'Vegetable Pizza',
                      imagePath: 'assets/pizzavege.png',
                      description: 'Fresh vegetables with mozzarella cheese.',
                    ),
                  ),
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Image.asset('assets/pizzavege.png', width: 100, height: 100),
                    const SizedBox(width: 20),
                    const Text(
                      'Vegetable Pizza',
                      style: TextStyle(
                        fontSize: 24.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          // Card 2: Chicken Pizza
          Card(
            elevation: 5,
            color: Colors.orange,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: InkWell(
              borderRadius: BorderRadius.circular(15),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const FoodDetailScreen(
                      foodName: 'Chicken Pizza',
                      imagePath: 'assets/pizzachicken.png',
                      description: 'Grilled chicken with special barbecue sauce.',
                    ),
                  ),
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Image.asset('assets/pizzachicken.png', width: 100, height: 100),
                    const SizedBox(width: 20),
                    const Text(
                      'Chicken Pizza',
                      style: TextStyle(
                        fontSize: 24.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

          // Card 3: Cheese Pizza
          Card(
            elevation: 5,
            color: Colors.orange,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: InkWell(
              borderRadius: BorderRadius.circular(15),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const FoodDetailScreen(
                      foodName: 'Cheese Pizza',
                      imagePath: 'assets/pizza.png',
                      description: 'Loaded with extra mozzarella and cheddar cheese.',
                    ),
                  ),
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  children: [
                    Image.asset('assets/pizza.png', width: 100, height: 100),
                    const SizedBox(width: 20),
                    const Text(
                      'Cheese Pizza',
                      style: TextStyle(
                        fontSize: 24.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// Extra Task: Navigation Detail Screen
class FoodDetailScreen extends StatelessWidget {
  final String foodName;
  final String imagePath;
  final String description;

  const FoodDetailScreen({
    super.key,
    required this.foodName,
    required this.imagePath,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(foodName),
        backgroundColor: Colors.deepOrange,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                imagePath,
                width: 150,
                height: 150,
              ),
              const SizedBox(height: 20),
              Text(
                foodName,
                style: const TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                description,
                textAlign: TextAlign.center,
                style: const TextStyle(fontSize: 18),
              ),
            ],
          ),
        ),
      ),
    );
  }
}