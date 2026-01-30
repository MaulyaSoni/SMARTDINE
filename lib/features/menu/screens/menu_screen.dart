import 'package:flutter/material.dart';

import '../../../shared/widgets/food_card.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  static const _filters = [
    'All',
    'Veg',
    'Non-Veg',
    'Vegan',
    'Desserts',
  ];

  static const _menuItems = [
    ('Smoked Pizza', '₹199', 'Wood-fired base with basil pesto drizzle'),
    ('Loaded Burger', '₹149', 'Brioche bun, double patty, house sauce'),
    ('Truffle Pasta', '₹229', 'Creamy linguine with roasted mushrooms'),
    ('Berry Smoothie', '₹129', 'Greek yogurt, berries, chia crunch'),
    ('Tiramisu Jar', '₹179', 'Espresso-soaked ladyfingers & mascarpone'),
    ('Sushi Platter', '₹249', 'Chef special rolls with pickled ginger'),
  ];

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Today\'s Cravings', style: theme.textTheme.headlineSmall),
            const SizedBox(height: 12),
            SizedBox(
              height: 38,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => FilterChip(
                  label: Text(_filters[index]),
                  selected: index == 0,
                  onSelected: (_) {},
                  showCheckmark: false,
                ),
                separatorBuilder: (_, __) => const SizedBox(width: 10),
                itemCount: _filters.length,
              ),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                itemCount: _menuItems.length,
                itemBuilder: (context, index) {
                  final item = _menuItems[index];
                  return FoodCard(
                    name: item.$1,
                    price: item.$2,
                    description: item.$3,
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
