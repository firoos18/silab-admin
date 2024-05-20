import 'package:flutter/material.dart';

class ParticipantCard extends StatelessWidget {
  final String fullname;

  const ParticipantCard({super.key, required this.fullname});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.white60,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: Colors.black26,
          width: 0.5,
        ),
      ),
      child: Row(
        children: [
          Text(fullname),
        ],
      ),
    );
  }
}
