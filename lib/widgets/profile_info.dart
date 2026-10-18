import 'package:flutter/material.dart';

class ProfileInfo extends StatelessWidget {
  final String programStudi;
  final String email;
  final String lokasi;

  const ProfileInfo({
    super.key,
    required this.programStudi,
    required this.email,
    required this.lokasi,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildInfoRow(
          Icons.school,
          programStudi,
        ),
        _buildInfoRow(
          Icons.email,
          email,
        ),
        _buildInfoRow(
          Icons.location_on,
          lokasi,
        ),
      ],
    );
  }

  Widget _buildInfoRow(IconData icon, String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            icon,
            color: Colors.blue,
            size: 20,
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(fontSize: 14),
            ),
          ),
        ],
      ),
    );
  }
}