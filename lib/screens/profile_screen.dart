import 'package:flutter/material.dart';

import '../widgets/profile_header.dart';
import '../widgets/profile_info.dart';
import '../widgets/action_buttons.dart';
import 'about_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil Mahasiswa'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 4,
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    children: [
                      const ProfileHeader(
                        name: 'Laras Kinanthi',
                        nim: '25.11.6337',
                      ),
                      const SizedBox(height: 24),
                      const ProfileInfo(
                        programStudi: 'S1 Informatika',
                        email:
                            'l.kinanthi@students.amikom.ac.id',
                        lokasi: 'Yogyakarta, Indonesia',
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Flexible(
              flex: 1,
              child: ActionButtons(
                onEdit: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Tombol Edit diklik'),
                    ),
                  );
                },
                onShare: () {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Tombol Bagikan diklik'),
                    ),
                  );
                },
                onAbout: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AboutScreen(),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}