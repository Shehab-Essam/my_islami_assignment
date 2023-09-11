import 'package:flutter/material.dart';

class RadioTab extends StatelessWidget {
  const RadioTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 100,),
        Image.asset('assets/images/radio_icon.png'),
        const SizedBox(height: 50,),
        Text('إذاعة القرآن الكريم',style:Theme.of(context).textTheme.titleMedium,),
        const SizedBox(height: 50,),
        Image.asset('assets/images/Radio.png'),
      ],
    );
  }
}
