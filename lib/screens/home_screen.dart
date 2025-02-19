import '../custom_card.dart';
import 'package:denemee/screens/second_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //Scaffold, uygulamanın temel iskeletini oluşturur.
      //İçinde AppBar (Üst Çubuk), Body (Ana İçerik Alanı) gibi bileşenler yer alır.
      appBar: AppBar(
        title: const Text(
          'ANA SAYFA',
          style: TextStyle(fontWeight: FontWeight.w300, color: Colors.white),
        ),
        backgroundColor: const Color.fromARGB(255, 223, 18, 18),
        centerTitle: true, //Başlığı ortalar
      ),
      body: Center(
        // İçeriği ekranın tam ortasına hizalar.
        child: Column(
          //İçindeki bileşenleri dikey olarak sıralar
          children: [
            //custom_card.dart dosyasından gelen widget
            CustomCardView(),
            Padding(
              padding: const EdgeInsets.only(top: 200),
              child: Image.asset('assets/image/deneme1.jpg', height: 70),
            ),
            const SizedBox(
              width: 200,
              height: 80,
              child: Card(elevation: 3, child: Align(child: Text('Merhaba'))),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SecondScreen()),
                );
              },
              child: const Text('Giriş'),
            ),
          ],
        ),
      ),
    );
  }
}
