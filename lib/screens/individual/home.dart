import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:turfind/controller/individualStateController.dart';
import 'package:turfind/widget/bottomsheet1.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);

  final IndividualStateController _individualStateController = Get.find<IndividualStateController>();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: GetBuilder<IndividualStateController>(builder: (controller) {
        return (!controller.isLoading)
        ? Container(
            height: double.infinity,
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        child: const Icon(Icons.menu, color: Colors.black,),
                        onTap: (){
                          showModalBottomSheet(
                            backgroundColor: Colors.white,
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30),
                                topRight: Radius.circular(30)
                              )
                            ),
                            isScrollControlled: true,
                            context: context,
                            builder: (context) => const AppBottomSheet()
                          );
                        },
                      ),
                      Column(
                        children: const [
                          Text("Current Location", style: TextStyle(fontSize: 15),),
                          SizedBox(height: 5,),
                          Text("Abuja, Nigeria", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
                        ],
                      ),
                      const InkWell(
                        child: Icon(Iconsax.notification),
                      )
                    ],
                  ),                         
                  const SizedBox(height: 30,),
                  Container(
                    height: 60,
                    width: 350,
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: TextFormField(
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Icon(Iconsax.search_normal, color: Colors.grey, size: 20,),
                          hintText: "Search for houses near you....",
                          hintStyle: TextStyle(color: Colors.grey, fontSize: 15),
                        ),
                      ),
                    )
                  ),
                  const SizedBox(height: 30,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "Featured Properties",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15
                        ),
                      ),
                      InkWell(
                        child: Text(
                          "View all",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            color: Colors.green
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 10,),
                  SizedBox(
                    height: 200,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemCount: 5,
                      separatorBuilder: (context, index){
                        return const SizedBox(
                          width: 10,
                        );
                      },
                      itemBuilder: ((context, index) {
                        return Container(
                          height: 200,
                          width: 170,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                height: 100,
                                width: 150,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.green,
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.symmetric(horizontal: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      "David Estate Duplex",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 12
                                      ),
                                    ),
                                    const SizedBox(height: 5,),
                                    Row(
                                      children: const [
                                        Icon(Iconsax.location, color: Colors.grey, size: 15,),
                                        SizedBox(width: 5,),
                                        Text(
                                          "Abuja, Nigeria",
                                          style: TextStyle(
                                            fontSize: 12,
                                            color: Colors.grey
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                margin: const EdgeInsets.symmetric(horizontal: 10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Row(
                                      children: const [
                                        Text(
                                          "N",
                                          style: TextStyle(
                                            fontSize: 12,
                                          ),
                                        ),
                                        Text(
                                          "250,000",
                                          style: TextStyle(
                                            fontSize: 12,
                                          ),
                                        ), 
                                      ],
                                    ),
                                    const Icon(Icons.bookmark_border_rounded)
                                  ],
                                ),
                              )
                            ],
                          ),
                        );
                      })
                    ),
                  ),
                  const SizedBox(height: 30,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "Recommended for you",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15
                        ),
                      ),
                      InkWell(
                        child: Text(
                          "View all",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                            color: Colors.green
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 400,
                    child: ListView.separated(
                      primary: false,
                      shrinkWrap: true,
                      itemCount: 3,
                      itemBuilder: (context, index){
                        return Container(
                          height: 100,
                          width: 380,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white
                          ),
                          child: Row(
                            children: [
                              Container(
                                margin: const EdgeInsets.symmetric(horizontal: 10),
                                height: 90,
                                width: 90,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Colors.green
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            const Text(
                                              "David Estate Duplex",
                                              style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 12
                                              ),
                                            ),
                                            const SizedBox(height: 5,),
                                            Row(
                                              children: const [
                                                Icon(Iconsax.location, color: Colors.grey, size: 15,),
                                                SizedBox(width: 5,),
                                                Text(
                                                  "Abuja, Nigeria",
                                                  style: TextStyle(
                                                    fontSize: 12,
                                                    color: Colors.grey
                                                  ),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                      Row( 
                                        children: const [
                                          Icon(Iconsax.star, color: Colors.yellow, size: 12,),
                                          Text(
                                            "4.5",
                                            style: TextStyle(
                                              fontSize: 12,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        child: Row(
                                          children: const [
                                            Text(
                                              "N",
                                              style: TextStyle(
                                                fontSize: 12,
                                              ),
                                            ),
                                            Text(
                                              "300,000",
                                              style: TextStyle(
                                                fontSize: 12,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const Icon(Icons.bookmark_outline),
                                    ],
                                  )
                                ],
                              )
                            ],
                          ),
                        );
                      }, 
                      separatorBuilder: (context, index){
                        return const SizedBox(
                          height: 10,
                        );
                      },  
                    ),
                  )
                ],
              ),
            ),
          )
        : const Center(
          child: CircularProgressIndicator(
              color: Colors.green,
            ),
        );
      }
    ),
    );
  }
}

