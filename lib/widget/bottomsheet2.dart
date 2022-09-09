import 'package:flutter/material.dart';


class ShowHouseOwnerDetails {
  static ownerDetails (houseDetails){
    return Container(
      height: 150,
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20))
      ),
      padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 8,
              width: 60,
              decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(20)
              ),
            ),
            const SizedBox(height: 20,),
            Text(
              houseDetails['owner'],
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold
              ),
            ),
            const SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const CircleAvatar(
                  radius: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.blue
                        ),
                        child: const Icon(Icons.message, color: Colors.white, size: 20,),
                      ),
                    ),
                    const SizedBox(width: 10,),
                    InkWell(
                      onTap: (){},
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.green
                        ),
                        child: const Icon(Icons.phone, color: Colors.white, size: 20,),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}