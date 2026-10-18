import 'package:flutter/material.dart';
import 'profile_photo.dart';
import 'socialmedia_row.dart';

class ProfileHeader extends StatelessWidget {
  final String name;
  final String nim;

  const ProfileHeader({
    super.key,
    required this.name,
    required this.nim,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 16),
        const ProfilePhoto(radius: 60),
        const SizedBox(height: 8),
        const SocialMediaRow(),
        const SizedBox(height: 8),
        Text(
          name.toUpperCase(),
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          'NIM: $nim',
          style: const TextStyle(
            fontSize: 14,
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}