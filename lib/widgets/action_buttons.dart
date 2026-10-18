import 'package:flutter/material.dart';

class ActionButtons extends StatelessWidget {
  final VoidCallback? onEdit;
  final VoidCallback? onShare;
  final VoidCallback onAbout;

  const ActionButtons({
    super.key,
    this.onEdit,
    this.onShare,
    required this.onAbout,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Wrap(
        alignment: WrapAlignment.center,
        spacing: 8,
        runSpacing: 4,
        children: [
          ElevatedButton.icon(
            onPressed: onEdit,
            icon: const Icon(Icons.edit),
            label: const Text('Edit'),
          ),
          ElevatedButton.icon(
            onPressed: onAbout,
            icon: const Icon(Icons.info_outline),
            label: const Text('Tentang'),
          ),
          ElevatedButton.icon(
            onPressed: onShare,
            icon: const Icon(Icons.share),
            label: const Text('Bagikan'),
          ),
        ],
      ),
    );
  }
}
