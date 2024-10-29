import 'package:flutter/material.dart';

class SearchForm extends StatelessWidget {
  const SearchForm({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> logos = [
      'assets/images/brands/adidas.png',
      'assets/images/brands/converse.png',
      'assets/images/brands/jordan.png',
      'assets/images/brands/nike.png',
      'assets/images/brands/puma.png',
      'assets/images/brands/vans.png',
    ];

    final List<Map<String, dynamic>> shoeData = [
      {
        'image': 'assets/images/shoes/1.png',
        'name': 'Air Jordan 1 Retro High OG Pine Green',
        'price': 400,
      },
      {
        'image': 'assets/images/shoes/2.png',
        'name': 'Air Jordan 4 Retro Bred',
        'price': 3500,
      },
      {
        'image': 'assets/images/shoes/3.png',
        'name': 'Air Jordan 5 Retro Orange Blaze',
        'price': 2200,
      },
      {
        'image': 'assets/images/shoes/4.png',
        'name': 'Air Jordan Retro High Dior',
        'price': 9000,
      },
      {
        'image': 'assets/images/shoes/5.png',
        'name': 'Nike Air More Uptempo',
        'price': 5000,
      },
      {
        'image': 'assets/images/shoes/6.png',
        'name': 'Air Jordan 1 Low',
        'price': 2000,
      },
    ];

    var screenWidth = MediaQuery.sizeOf(context).width;
    var cardSize = (screenWidth - 50) / 2;

    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: IconButton(
                        onPressed: () => {},
                        icon: const Icon(Icons.menu, size: 30.0))),
                Image.asset(
                  'assets/images/logo/skylab.png',
                  alignment: Alignment.center,
                  width: 200,
                ),
                Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: IconButton(
                      onPressed: () => {},
                      icon: const Icon(Icons.shopping_basket_outlined, size: 30.0),
                    ))
              ],
            ),
            const SizedBox(height: 16),
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
                    borderRadius: BorderRadius.circular(35),
                    borderSide: BorderSide.none,
                  ),
                  contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                ),
              ),
            ),
            const SizedBox(height: 16),
            const Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        flex: 1,
                        child: Center(
                          child: Icon(Icons.location_on,
                              color: Colors.green, size: 30),
                        ),
                      ),
                      Expanded(
                        flex: 8,
                        child: Row(
                          children: [
                            Text(
                              'Ship to',
                              style: TextStyle(
                                color: Colors.black38,
                                fontWeight: FontWeight.w600,
                                fontSize: 14,
                              ),
                            ),
                            SizedBox(width: 3),
                            Expanded(
                              child: Text(
                                'Yıldız Technical University',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14,
                                ),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Center(
                          child: Icon(Icons.chevron_right, size: 30),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: 60,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: logos.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.grey[200],
                      child: Image.asset(
                        logos[index],
                        width: 40,
                        height: 40,
                        fit: BoxFit.contain,
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Container(
                height: 130,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Stack(
                  children: [
                    Row(
                      children: [
                        Expanded(
                          flex: 2,
                          child: SizedBox(
                            child: Transform.flip(
                              flipX: true,
                              child: Transform.rotate(
                                angle: 12,
                                child: Image.asset(
                                  'assets/images/shoes/1.png',
                                  height: 110,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                'New-year Sale',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                              const SizedBox(height: 5),
                              const Text(
                                'Up to %90',
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w300,
                                    fontSize: 16),
                              ),
                              const SizedBox(height: 5),
                              ElevatedButton(
                                  onPressed: () => {},
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.green,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                  child: const Text(
                                    "Shop Now",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16),
                                  ))
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'New Arrival',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                  ),
                  TextButton(
                    onPressed: () => {},
                    child: const Text(
                      'see all',
                      style: TextStyle(
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    ),
                  ),
                ],
              ),
            ),
            // Product Grid
            GridView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.75,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
              ),
              itemCount: shoeData.length,
              itemBuilder: (context, index) {
                return ProductCard(
                  image: shoeData[index]['image'],
                  name: shoeData[index]['name'],
                  price: shoeData[index]['price'],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  final String image;
  final String name;
  final int price;

  const ProductCard({
    Key? key,
    required this.image,
    required this.name,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
              child: Stack(
                children: [
                  Image.asset(
                    image,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),

                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 4),
                Text(
                  '\$${price.toStringAsFixed(2)}',
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}