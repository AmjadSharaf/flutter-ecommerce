import 'package:ecomme/core/constant/colors.dart';

import 'package:ecomme/core/domain/model/prodact_model.dart';

import 'package:ecomme/features/prodacts/presentation/widget/detals_body.dart';
import 'package:flutter/material.dart';

class ProdutsDetailsPage extends StatelessWidget {
  final ProdactModel prodact;

  const ProdutsDetailsPage({super.key, required this.prodact});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: KprimaryColor,
      appBar: AppBar(
        backgroundColor: KprimaryColor,
        centerTitle: false,
        title: Text("back"),
      ),
      body: DetailsBody(prodact: prodact),
    );
  }
}
