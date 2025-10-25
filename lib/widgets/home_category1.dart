import 'package:flutter/material.dart';
import 'package:grocery_app/widgets/box_elements.dart';

class HomeCategory1 extends StatelessWidget {
  final String categoryLabel;

  const HomeCategory1({super.key, required this.categoryLabel});

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
                title: 'Bundle Pack',
                subtitle: 'Onion,Oil,Salt',
                price: "\$35",
                offPrice: '\$50.32',
                image: 'assets/images/pack.png',
              ),
              BoxElements(
                title: 'Bundle Pack',
                subtitle: 'Onion,Oil,Salt',
                price: "\$35",
                offPrice: '\$50.32',
                image: 'assets/images/pack.png',
              ),
              BoxElements(
                title: 'Bundle Pack',
                subtitle: 'Onion,Oil,Salt',
                price: "\$35",
                offPrice: '\$50.32',
                image: 'assets/images/pack.png',
              ),
              BoxElements(
                title: 'Bundle Pack',
                subtitle: 'Onion,Oil,Salt',
                price: "\$35",
                offPrice: '\$50.32',
                image: 'assets/images/pack.png',
              ),
            ],
          ),
        ),
      ],
    );
  }
}
