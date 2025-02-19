import 'package:flutter/material.dart';

class CustomCardView extends StatelessWidget {
  const CustomCardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      margin: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        //Decoration sınıfında BoxDecoration ile stil veriyor
        borderRadius: BorderRadius.circular(15), // 15 px yuvarlar
        color: Colors.white30,
        boxShadow: [
          BoxShadow(
            //gögelendirme yaptık
            color: const Color.fromARGB(255, 211, 149, 195),
            blurRadius: 5,
            spreadRadius: 1,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      alignment: Alignment.center, //İçeriği ortaya hizalar.
      child: const Text('Giriş', style: TextStyle(fontSize: 24)),
    );
  }
}
