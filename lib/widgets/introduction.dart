import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:auto_size_text/auto_size_text.dart';

class Introduction extends StatelessWidget {

  Widget _buildName(String father, mother, order, name) {

    return Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                if(father.isNotEmpty) Text(father, style: TextStyle(fontSize: 15)),
                Text(mother, style: TextStyle(fontSize: 15)),
              ],
            ),
            Text('  의 $order  '),
            Text(name, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          ],
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsetsDirectional.all(20.0),
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.25,
              child: Image.asset(
                'assets/images/hoonu_woonu.png',
                fit: BoxFit.contain,
              ),
            ),
            AutoSizeText('알립니다',
                style: TextStyle(
                    color: const Color.fromRGBO(41, 82, 56, 100),
                    fontWeight: FontWeight.bold,
                    fontSize: 20)),
            SizedBox(height: 50),
            AutoSizeText(
              '훈이와 겸이가 결혼합니다. \n우연 같은 인연으로 시작된 저희의 사랑이 깊어져 \n2023년의 마지막 날 부부가 되고자 합니다.\n\n' +
                  '오랫동안 저희 둘을 지켜보고 아껴주신 분들께 \n이 소식을 전하게 되어 더없이 기쁩니다. \n양가 어른들의 배려로 저희는 소박하지만 뜻깊은 가족 결혼식을 치르기로 하였습니다.\n\n' +
                  '감사한 분들을 모두 모시는 것이 도리인 줄 아오나 \n그러지 못한 점을 송구스럽게 생각합니다.\n너른 양해를 부탁드립니다.\n멀리서나마 저희를 응원하고 축하해 주신다면 큰 선물로 여기겠습니다',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 15),
            ),
            SizedBox(height: 50),
            _buildName('', '박미선', '장남', '훈   '),
            SizedBox(height: 30),
            _buildName('지홍근', '박재순', '장녀', '한겸'),
            SizedBox(height: 50),
            AutoSizeText('2023년 12월 31일 일요일',
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: const Color.fromRGBO(41, 82, 56, 100),
                    fontWeight: FontWeight.bold,
                    fontSize: 20)),
            SizedBox(height: 50),
            AutoSizeText(
              '대구 수성호텔',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 15),
            ),
            SizedBox(height: 20),
          ],
        ));
  }
}