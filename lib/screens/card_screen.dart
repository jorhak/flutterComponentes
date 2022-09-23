import 'package:flutter/material.dart';

import 'package:fl_components/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const [
          CustomCardType1(),
          SizedBox(
            height: 20,
          ),
          CustonCardType2(
            imageUrl:
                'https://iv1.lisimg.com/image/15529365/740full-sophia-tatum.jpg',
          ),
          SizedBox(
            height: 20,
          ),
          CustonCardType2(
            imageUrl:
                'https://iv1.lisimg.com/image/11808629/740full-sophia-tatum.jpg',
          ),
          SizedBox(
            height: 20,
          ),
          CustonCardType2(
            imageUrl:
                'https://iv1.lisimg.com/image/9905328/740full-sophia-tatum.jpg',
          ),
          SizedBox(
            height: 20,
          ),
          CustonCardType2(
            imageUrl:
                'https://ilarge.lisimg.com/image/9905381/1118full-sophia-tatum.jpg',
            name: 'Sophia Tatum',
          ),
          SizedBox(
            height: 100,
          ),
        ],
      ),
    );
  }
}
