import 'package:flutter/material.dart';
import 'package:project/shared/constants.dart';
import 'package:project/widgets/home_page_card.dart';

class ProductGrid extends StatelessWidget {
  const ProductGrid({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 0.9,
          crossAxisSpacing: 20,
          mainAxisSpacing: 15,
          crossAxisCount: 2,
        ),
        physics: BouncingScrollPhysics(),
        shrinkWrap: true,
        padding: EdgeInsets.all(15),
        itemCount: Constants.modelList.length,
        itemBuilder: (context, index) => HomePageCard(index: index),
      ),
    );
  }
}
