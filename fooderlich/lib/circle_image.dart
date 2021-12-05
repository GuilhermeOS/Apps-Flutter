import 'package:flutter/material.dart';

class CircleImage extends StatelessWidget {
  const CircleImage({
    Key? key,
    this.imageProvider,
    this.imageRadius = 20,
  }) : super(key: key);

  final double imageRadius;
  final ImageProvider? imageProvider;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      // Isso aqui faz uma borda branca circular para a imagem
      backgroundColor: Colors.white,
      radius: imageRadius,
      child: CircleAvatar(
        // Aqui vai a foto de fato, um pouco menor para dar a borda.
        radius: imageRadius - 5,
        backgroundImage: imageProvider,
      ),
    );
  }
}
