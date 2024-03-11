import 'package:fashion_app/core/constants/colors.dart';
import 'package:flutter/material.dart';

class ProductFiltersWidget extends StatelessWidget {
  const ProductFiltersWidget({super.key});

  static const List<String> filterLabels = [
    'Popular',
    'Trending',
    'New',
    'Summer',
    'Winter',
    'Spring',
    'Autumn'
  ];
  final double rowGap = 10;

  final bool isSelected = false;
  void onFilterSelected(int index) {
    print('Selected filter: ${filterLabels[index]}');
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(children: [
        for (String label in filterLabels)
          Padding(
            padding: EdgeInsets.only(right: rowGap),
            child: FilterChip(
              padding: EdgeInsets.all(5),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              label: Text(
                label,
                style: TextStyle(
                  color: redButton,
                  fontWeight: FontWeight.w800,
                  fontSize: 15,
                ),
              ),
              onSelected: (index) => {},
            ),
          ),
      ]),
    );
  }
}
