import 'package:flutter/material.dart';

import '../models/phone_features.dart';

class PhoneTile extends StatelessWidget {
  Phone phone;
  void Function()? onTap;
  PhoneTile({super.key, required this.phone, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 25),
      width: 280,
      height: 350,
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(phone.imagePath)),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal:25.0),
            child: Text(
              phone.description,
              style: TextStyle(color: Colors.grey[500]),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 17.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      phone.name,
                      style:const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                   const SizedBox(
                      height: 5,
                    ),
                    Text(phone.price,style: TextStyle(color: Colors.black),),
                  ],
                ),
                GestureDetector(
                  onTap:  onTap,
                  child: Container(
                    padding: const EdgeInsets.all(15),
                    decoration: const BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(13),
                        bottomRight: Radius.circular(13),
                      ),
                    ),
                    child: const Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
