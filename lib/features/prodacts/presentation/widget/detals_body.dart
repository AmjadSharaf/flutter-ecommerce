import 'package:ecomme/core/constant/colors.dart';
import 'package:ecomme/core/domain/model/prodact_model.dart';
import 'package:ecomme/features/prodacts/presentation/widget/prodact_image.dart';
import 'package:flutter/material.dart';

class DetailsBody extends StatelessWidget {
  const DetailsBody({super.key, required this.prodact});
  final ProdactModel prodact;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: kDefaultFontSize),
          decoration: BoxDecoration(
            color: Colors.white70,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(50),
              bottomRight: Radius.circular(50),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              prodact_image(size: size, image: prodact.imagesUrl),
              Container(
                margin: EdgeInsets.symmetric(vertical: kDefaultFontSize / 2),
                padding: EdgeInsets.symmetric(
                  vertical: KDefaultPadding / 2,
                  horizontal: KDefaultPadding * 1.5,
                ),

                // SizedBox(height: KDefaultPadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(prodact.name),
                    Text("price: ${prodact.price} \$"),
                  ],
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            prodact.description,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ],
    );
  }
}


