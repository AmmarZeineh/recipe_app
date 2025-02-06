import 'package:flutter/material.dart';
import 'package:recipe_app/core/utils/size_config.dart';

class ShimmerMeal extends StatelessWidget {
  const ShimmerMeal({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          color: Colors.red,
          width: SizeConfig.width / 3.6,
          height: SizeConfig.height / 8,
        ),
        const SizedBox(
          width: 16,
        ),
        Expanded(
          child: Column(
            children: [
              Container(
                color: Colors.white,
                height: SizeConfig.height / 100,
              ),
              const SizedBox(
                height: 8,
              ),
              Container(
                color: Colors.white,
                height: SizeConfig.height / 100,
              ),
              const SizedBox(
                height: 8,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
