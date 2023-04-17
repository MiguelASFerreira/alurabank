import 'package:alurabank/components/box_card.dart';
import 'package:alurabank/components/color_dot.dart';
import 'package:alurabank/components/content_division.dart';
import 'package:alurabank/theme/themes_colors.dart';
import 'package:flutter/material.dart';

class PointsAccount extends StatelessWidget {
  const PointsAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 6),
            child: Text(
              'Pontos da conta',
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          const BoxCard(boxContent: _PointsAccountContent()),        
        ],
      ),
    );
  }
}

class _PointsAccountContent extends StatelessWidget {
  const _PointsAccountContent();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget> [
        const Text("Pontos totais:"),
        Text(
          "3000",
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        const Padding(
          padding: EdgeInsets.only(top: 1, bottom: 1),
          child: ContentDivision(),
        ),
        Text(
          "Objetivos:",
          style: Theme.of(context).textTheme.titleMedium,
        ),
        Row(
          children: [
            ColorDot(color: ThemeColors.accountPoints["delivery"]),
            const Padding(
              padding: EdgeInsets.only(top: 2, left: 4),
              child: Text("Entrega grátis: 15000pts"),
            ),
          ],
        ),
        Row(
          children: [
            ColorDot(color: ThemeColors.accountPoints["streaming"]),
            const Padding(
              padding: EdgeInsets.only(top: 2, left: 4),
              child: Text("1 mês de streaming: 30000pts"),
            ),
          ],
        ),
      ],
    );
  }
}