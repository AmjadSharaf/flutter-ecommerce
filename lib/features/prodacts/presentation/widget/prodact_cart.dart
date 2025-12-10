import 'package:ecomme/core/constant/colors.dart';
import 'package:ecomme/core/domain/model/prodact_model.dart';
import 'package:ecomme/features/favorites/cubit/favorites_cubit.dart';
import 'package:ecomme/features/favorites/cubit/favorites_state.dart';
import 'package:ecomme/features/prodacts/presentation/page/produts_details_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class prdactCard extends StatelessWidget {
  final itemIndex;

  final ProdactModel prodact;
  const prdactCard({super.key, this.itemIndex, required this.prodact});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: KDefaultPadding,
        vertical: KDefaultPadding / 2,
      ),
      height: 190.0,

      child: InkWell(
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProdutsDetailsPage(prodact: prodact),
          ),
        ),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              height: 166.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 15),
                    blurRadius: 2,
                    color: Colors.black12,
                  ),
                ],
              ),
            ),
            Positioned(
              top: 0.0,
              left: 0.0,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: KDefaultPadding),
                height: 160.0,
                width: 200.0,
                child: Image.asset(prodact.imagesUrl, fit: BoxFit.cover),
              ),
            ),
            Positioned(
              top: 50,
              right: 0.0,
              child: SizedBox(
                height: 160.0,
                width: size.width - 200.0,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: kDefaultFontSize,
                      ),
                      child: Text(prodact.name),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: kDefaultFontSize,
                      ),
                      child: Text(prodact.description),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: kDefaultFontSize * 1.5,
                        vertical: kDefaultFontSize / 4,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22),
                        color: Colors.amberAccent,
                      ),
                      child: Text("price: ${prodact.price} \ل.س"),
                    ),
                    SizedBox(height: 10.0),
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: kDefaultFontSize * 1.5,
                        vertical: kDefaultFontSize / 4,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(22),
                        color: KprimaryColor,
                      ),
                      child: Text("Discount: ${prodact.discount} \ل.س"),
                    ),
                    
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
