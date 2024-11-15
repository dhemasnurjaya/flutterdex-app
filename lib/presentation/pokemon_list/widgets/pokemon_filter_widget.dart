import 'dart:math' show max;

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PokemonFilterWidget extends StatefulWidget {
  const PokemonFilterWidget({
    required this.onSearch,
    super.key,
  });

  final void Function(String) onSearch;

  @override
  State<PokemonFilterWidget> createState() => _PokemonFilterWidgetState();
}

class _PokemonFilterWidgetState extends State<PokemonFilterWidget> {
  final _focusNode = FocusNode();
  final _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    const outerRadius = 16.0;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.surfaceContainerHighest,
              borderRadius: BorderRadius.circular(outerRadius),
            ),
            child: Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(
                    left: 16,
                    right: 8,
                  ),
                  child: Icon(FontAwesomeIcons.magnifyingGlass),
                ),
                Expanded(
                  child: TextField(
                    controller: _searchController,
                    focusNode: _focusNode,
                    textInputAction: TextInputAction.search,
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Name or Dex number',
                    ),
                    onTapOutside: (_) {
                      _focusNode.unfocus();
                    },
                    onSubmitted: (value) => widget.onSearch(value),
                  ),
                ),
                Visibility(
                  visible: _searchController.text.isNotEmpty,
                  child: IconButton(
                    onPressed: () {
                      widget.onSearch('');
                      _searchController.clear();
                    },
                    icon: const Icon(FontAwesomeIcons.xmark),
                  ),
                ),
              ],
            ),
          ),
        ),
        const SizedBox(width: 4),
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(outerRadius),
            ),
            backgroundColor:
                Theme.of(context).colorScheme.surfaceContainerHighest,
            padding: EdgeInsets.zero,
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
            shadowColor: Colors.transparent,
          ),
          child: FaIcon(
            FontAwesomeIcons.sliders,
            color: Theme.of(context).colorScheme.onSurface,
          ),
        ),
      ],
    );
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
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
