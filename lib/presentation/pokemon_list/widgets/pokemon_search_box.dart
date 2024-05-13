import 'dart:math' show max;

import 'package:flutter/material.dart';

class PokemonSearchBox extends StatelessWidget {
  const PokemonSearchBox({super.key});

  @override
  Widget build(BuildContext context) {
    const outerRadius = 16.0;

    return Row(
      children: [
        Expanded(
          child: TextField(
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.all(8),
              filled: true,
              fillColor: Theme.of(context).colorScheme.surfaceVariant,
              border: const OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.all(Radius.circular(outerRadius)),
              ),
              prefixIcon: const Icon(Icons.search),
              hintText: 'Name or Dex number',
            ),
          ),
        ),
        const SizedBox(width: 8),
        InkWell(
          onTap: () {},
          borderRadius: BorderRadius.circular(outerRadius),
          child: Ink(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.surfaceVariant,
              borderRadius: BorderRadius.circular(outerRadius),
            ),
            child: Icon(
              Icons.settings,
              color: Theme.of(context).colorScheme.onSurface,
            ),
          ),
        ),
      ],
    );
  }
}

class PokemonSearchBoxDelegate extends SliverPersistentHeaderDelegate {
  const PokemonSearchBoxDelegate({
    required this.minHeight,
    required this.maxHeight,
    required this.pinned,
    required this.child,
  });
  final double minHeight;
  final double maxHeight;
  final bool pinned;
  final Widget child;

  @override
  double get minExtent => minHeight;

  @override
  double get maxExtent => max(maxHeight, minHeight);

  @override
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    final isScrolledUnder =
        overlapsContent || (pinned && shrinkOffset > maxExtent - minExtent);

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: Theme.of(context).scaffoldBackgroundColor,
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(8),
          bottomRight: Radius.circular(8),
        ),
        boxShadow: isScrolledUnder
            ? [
                const BoxShadow(
                  color: Colors.black54,
                  blurRadius: 4,
                ),
              ]
            : null,
      ),
      child: SizedBox.expand(child: child),
    );
  }

  @override
  bool shouldRebuild(PokemonSearchBoxDelegate oldDelegate) {
    return maxHeight != oldDelegate.maxHeight ||
        minHeight != oldDelegate.minHeight ||
        child != oldDelegate.child;
  }
}
