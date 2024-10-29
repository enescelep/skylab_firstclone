import 'package:flutter/material.dart';

class NavigationMenu extends StatefulWidget {

  // Constructor to accept currentIndex and onTap handler from main.dart
  const NavigationMenu({super.key});

  @override
  State<NavigationMenu> createState() => _NavigationMenuState();
}

class _NavigationMenuState extends State<NavigationMenu> {

  final tabBarIcons = [
    Icons.shopping_cart_outlined,
    Icons.search,
    Icons.favorite_border,
    Icons.person_2_outlined,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          bottom: false,
          child: Stack(
              children: [
                Positioned(
                bottom:40,
                left:20,
                right: 20,
                child: Container(
                  alignment: Alignment.center,
                  height: 70,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(40.0),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ...tabBarIcons.map(
                          (icon) => IconButton(
                              onPressed: () => {},
                              icon: Icon(icon, color: Colors.white, size: 30)
                          ),
                      ),
                    ],
                  ),
                 ),
                )
              ]
          )
          )

    );
  }
}

class Deneme extends StatelessWidget {
  const Deneme({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // Top bar with menu, logo and cart
            Row(
              children: [
                // Menu button
                const Expanded(
                  flex: 1,
                  child: Center(
                    child: Icon(Icons.menu, size: 30)
                  ),
                ),

                // Logo
                Expanded(
                  flex: 3,
                  child: Center(
                    child: Image.asset(
                      'assets/images/logo/skylab.png', // Make sure to add this to pubspec.yaml
                    ),
                  ),
                ),

                // Cart icon with badge
                const Expanded(
                  flex: 1,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Icon(Icons.shopping_cart_outlined, size: 30),
                    ],
                  ),
                ),
              ],
            ),

            const SizedBox(height: 16),

            // Search bar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'What are you looking for?',
                  hintStyle: const TextStyle(color: Colors.grey),
                  prefixIcon: const Icon(Icons.search, color: Colors.grey),
                  filled: true,
                  fillColor: Colors.grey[200],
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                    borderSide: BorderSide.none,
                  ),
                  contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                ),
              ),
            ),

            const SizedBox(height: 16),

            // Shipping address
            InkWell(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Icon(Icons.location_on,
                        color: Colors.green[700],
                      ),
                    ),
                    const Expanded(
                      flex: 8,
                      child: Row(
                        children: [
                          Text(
                            'Ship to ',
                            style: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Expanded(
                            child: Text(
                              'Jl. Malioboro, Blok Z, no 1888',
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                              ),
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Expanded(
                      flex: 1,
                      child: Icon(Icons.chevron_right),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
