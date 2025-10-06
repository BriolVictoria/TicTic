import 'package:flutter/material.dart';
import 'package:tictic/screens/welcome/widgets/text_slider.dart';

import '../../../constants/sizes.dart';
import 'bullets.dart';

class TextSliderWithBullets extends StatefulWidget {
  TextSliderWithBullets({super.key});

  final PageController _pageController = PageController(viewportFraction: 1);

  int _currentIdx = 0;

  final _items = [
    'L’harmonie financière dans vos groupes, en toute simplicité !',
    'Calculs instantanés, équité garantie avec TicTic !',
    'Calculs fastidieux ? Non merci. Optez pour la simplicité avec TicTic !',
    'TicTic : Vos dépenses partagées en toute simplicité !',
  ];

  @override
  State<TextSliderWithBullets> createState() => _TextSliderWithBulletsState();
}

class _TextSliderWithBulletsState extends State<TextSliderWithBullets> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [TextSlider(
        pageController: widget._pageController,
        currentIdx: widget._currentIdx,
        items: widget._items,
        onPageChanged: (int idx) {
          setState(() {
            widget._currentIdx = idx;
          });
        },
      ),
        SizedBox(height: kVerticalPadding),
        Bullets(
          items: widget._items,
          pageController: widget._pageController,
          currentIdx: widget._currentIdx,
        )],
    );
  }
}
