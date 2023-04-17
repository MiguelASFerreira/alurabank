import 'package:flutter/material.dart';
import 'package:alurabank/components/box_card.dart';

class AccountActions extends StatelessWidget {
  const AccountActions({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 13),
            child: Text(
              "Ações da Compra",
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {},
                child: const BoxCard(boxContent: _AccountActionsContent(
                  icon: Icons.account_balance_wallet, 
                  text: "Depositar"
                )),
              ),
              InkWell(
                onTap: () {},
                child: const BoxCard(boxContent: _AccountActionsContent(
                  icon: Icons.cached, 
                  text: "Transferir"
                )),
              ),
              InkWell(
                onTap: () {},
                child: const BoxCard(boxContent: _AccountActionsContent(
                  icon: Icons.center_focus_strong, 
                  text: "Ler"
                )),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _AccountActionsContent extends StatelessWidget {
  final IconData icon;
  final String text;
  const _AccountActionsContent({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 72, 
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 2),
            child: Icon(icon),
          ),
          Text(text)
        ],
      ),
    );
  }
}
