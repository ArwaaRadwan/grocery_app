import 'package:flutter/material.dart';
import 'package:grocery_app/widgets/box_elements.dart';

class HomeCategory2 extends StatelessWidget {
  final String categoryLabel;

  const HomeCategory2({super.key, required this.categoryLabel});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text(categoryLabel, style: TextStyle(fontSize: 19)),
        ),
        SizedBox(
          height: 230,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              BoxElements(
                title: 'Ice Cream Banans',
                subtitle: '800 gm',
                price: "\$13",
                offPrice: '\$15',
                image: 'assets/images/ice_cream.png',
              ),
              BoxElements(
                title: 'Ice Cream Banans',
                subtitle: '800 gm',
                price: "\$13",
                offPrice: '\$15',
                image: 'assets/images/ice_cream.png',
              ),
              BoxElements(
                title: 'Ice Cream Banans',
                subtitle: '800 gm',
                price: "\$13",
                offPrice: '\$15',
                image: 'assets/images/ice_cream.png',
              ),
              BoxElements(
                title: 'Ice Cream Banans',
                subtitle: '800 gm',
                price: "\$13",
                offPrice: '\$15',
                image: 'assets/images/ice_cream.png',
              ),
            ],
          ),
        ),
      ],
    );
  }
}
