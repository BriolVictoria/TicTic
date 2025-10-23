import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../constants/sizes.dart';

class LogoProfil extends StatelessWidget {
  const LogoProfil({super.key});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      'assets/img/dog.png',
      height: MediaQuery.of(context).size.height * kLogoSizeRatioWelcome,
      width: MediaQuery.of(context).size.height * kLogoSizeRatioWelcome,
      semanticsLabel: 'Photo de profil de chien',
    );
  }
}
