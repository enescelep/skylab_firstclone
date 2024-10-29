import 'package:flutter/material.dart';

class ProductGrid extends StatelessWidget {
  final List<Map<String, dynamic>> products = [
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
  ];

  ProductGrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(16),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.75,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
      ),
      itemCount: products.length,
      itemBuilder: (context, index) {
        return ProductCard(
          image: products[index]['image'],
          name: products[index]['name'],
          price: products[index]['price'],
        );
      },
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
                  Positioned(
                    top: 8,
                    right: 8,
                    child: IconButton(
                      icon: const Icon(
                        Icons.favorite_border,
                        color: Colors.grey,
                      ),
                      onPressed: () {},
                    ),
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