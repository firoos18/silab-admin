import 'package:flutter/material.dart';

class ParticipantCard extends StatelessWidget {
  final String fullname;
  final String nim;

  const ParticipantCard({super.key, required this.fullname, required this.nim});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 64,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.white60,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: Colors.black26,
          width: 0.5,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(fullname),
          Text(nim),
        ],
      ),
    );
  }
}
