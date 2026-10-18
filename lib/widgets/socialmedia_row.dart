import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SocialMediaRow extends StatelessWidget {
  const SocialMediaRow({super.key});

  void _showMessage(BuildContext context, String name) {
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(
        SnackBar(
          content: Text('$name diklik'),
          duration: const Duration(seconds: 2),
        ),
      );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          onPressed: () => _showMessage(context, 'Instagram'),
          icon: const FaIcon(
            FontAwesomeIcons.instagram,
            size: 24,
          ),
          tooltip: 'Instagram',
        ),
        IconButton(
          onPressed: () => _showMessage(context, 'LinkedIn'),
          icon: const FaIcon(
            FontAwesomeIcons.linkedin,
            size: 24,
          ),
          tooltip: 'LinkedIn',
        ),
        IconButton(
          onPressed: () => _showMessage(context, 'GitHub'),
          icon: const FaIcon(
            FontAwesomeIcons.github,
            size: 24,
          ),
          tooltip: 'GitHub',
        ),
      ],
    );
  }
}