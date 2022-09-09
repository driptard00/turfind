import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';
import 'package:turfind/controller/individualStateController.dart';
import 'package:turfind/widget/bottomsheet2.dart';

class DetailScreen extends StatelessWidget {
  DetailScreen({Key? key}) : super(key: key);

  final IndividualStateController _individualStateController = Get.find<IndividualStateController>();

  final  _houseDetails = Get.arguments["allDetails"];

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
