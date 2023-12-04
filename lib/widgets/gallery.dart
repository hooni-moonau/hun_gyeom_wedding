import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../model/image.dart';

class Gallery extends StatelessWidget {
  Widget _buildImage(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.1,
      child: Image.asset(
        'assets/images/photo.png',
        fit: BoxFit.contain,
      ),
    );
  }

  Widget _buildTitleText() {
    return Container(
      child: Text(
        'Photo Gallery',
        style: TextStyle(
            color: const Color.fromRGBO(251, 206, 12, 100),
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildImage(context),
        _buildTitleText(),
        SizedBox(height: 50.0),
        SizedBox.fromSize(
          size: const Size.fromHeight(500.0),
          child: CarouselSlider.builder(
              itemCount: imageItems.length,
              itemBuilder: (context, index, realIndex){
                return Container(
                  height: 500,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.asset(imageItems[index].imageUrl, fit:BoxFit.cover),
                  ),
                );
              },
            options: CarouselOptions(
              autoPlay: true,
              height: 500,
              enlargeCenterPage: true,
            ),
          ),
        ),
      ],
    );
  }
}