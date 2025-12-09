import 'package:ecomme/core/constant/colors.dart';
import 'package:ecomme/core/data/dumy/dumy_data.dart';


import 'package:ecomme/features/prodacts/presentation/widget/prodact_cart.dart';

import 'package:flutter/material.dart';

class ProdactsPage extends StatelessWidget {
  const ProdactsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KprimaryColor,
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: KprimaryColor,
        title: Text("prodacts"),
      ),

      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: KDefaultPadding),
            Expanded(
              child: Stack(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 70.0),
                    decoration: BoxDecoration(
                      color: KbackgroundColors,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(KDefaultPadding * 2),
                        topRight: Radius.circular(KDefaultPadding * 2),
                      ),
                    ),
                  ),
                  ListView.builder(
                    itemCount: dummyProducts.length,
                    itemBuilder: (context, index) => prdactCard(
                      itemIndex: index,
                      prodact: dummyProducts[index],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

