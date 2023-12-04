
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/widgets.dart';

class SpecialThanks extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Special Thanks',
          style: TextStyle(
            color: const Color.fromRGBO(251, 206, 12, 100),
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 30,),
            Container(
              width: 50,
              height: 50,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset('assets/images/thanks1.jpeg', fit:BoxFit.cover),
                ),
            ),
            SizedBox(width: 30),
            AutoSizeText('Sunny')
          ],
        )
      ],
    );
  }
}