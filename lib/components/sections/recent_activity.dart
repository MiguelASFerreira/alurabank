import 'package:alurabank/components/content_division.dart';
import 'package:flutter/material.dart';

import '../../theme/themes_colors.dart';
import '../box_card.dart';
import '../color_dot.dart';

class RecentActivity extends StatelessWidget {
  const RecentActivity({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top: 16, right: 16, left: 16),
      child: BoxCard(boxContent: _RecentActivityContent()),
    );
  }
}

class _RecentActivityContent extends StatelessWidget {
  const _RecentActivityContent();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 4),
                  child: ColorDot(color: ThemeColors.recentActivity["spent"]),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Saída"),
                    Text(
                      "\$9900.97",
                      style: Theme.of(context).textTheme.bodyLarge,
                    )
                  ],
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 4),
                  child: ColorDot(color: ThemeColors.recentActivity["income"]),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text("Entrada"),
                    Text(
                      "\$9332.35",
                      style: Theme.of(context).textTheme.bodyLarge,
                    ),  
                  ],
                ),
              ],
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 16, bottom: 4),
          child: Text(
            "Limite de gastos: \$432.93",
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ),
        Container(
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20)
          ),
          child: const LinearProgressIndicator(
            value: 0.5,
            minHeight: 8,
          ),
        ),
        
        const Padding(
          padding: EdgeInsets.only(top: 8, bottom: 8),
          child: ContentDivision(),
        ),
        const Padding(
          padding: EdgeInsets.only(right: 16),
          child: Text("Esse mês você gastou \$1500.00 com jogos. Tente abaixar esse custo!"),
        ),
        TextButton(
          onPressed: () {}, 
          child: const Text(
            "Diga-me como",
            style: TextStyle(
              fontSize: 16
            ),
          ),
        )
        
      ],
    );
  }
}

