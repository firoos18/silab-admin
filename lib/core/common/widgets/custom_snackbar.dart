import 'package:flutter/material.dart';

enum SnackbarType { info, success, error, warning }

class CustomSnackbar extends StatefulWidget {
  final String message;
  final IconData icon;
  final Color backgroundColor;
  final Color textColor;

  const CustomSnackbar({
    super.key,
    required this.backgroundColor,
    required this.icon,
    required this.message,
    required this.textColor,
  });

  factory CustomSnackbar.variant({
    required String message,
    required SnackbarType type,
  }) {
    switch (type) {
      case SnackbarType.error:
        return CustomSnackbar(
          backgroundColor: Colors.redAccent,
          icon: Icons.error,
          message: message,
          textColor: Colors.white,
        );
      case SnackbarType.warning:
        return CustomSnackbar(
          backgroundColor: Colors.orangeAccent,
          icon: Icons.warning,
          message: message,
          textColor: Colors.white,
        );
      case SnackbarType.success:
        return CustomSnackbar(
          backgroundColor: Colors.greenAccent,
          icon: Icons.info,
          message: message,
          textColor: Colors.white,
        );
      default:
        return CustomSnackbar(
          backgroundColor: Colors.blueAccent,
          icon: Icons.info,
          message: message,
          textColor: Colors.white,
        );
    }
  }

  @override
  State<CustomSnackbar> createState() => _CustomSnackbarState();
}

class _CustomSnackbarState extends State<CustomSnackbar>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    _controller = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
    );
    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    );
    _controller.forward();

    Future.delayed(const Duration(seconds: 2), () async {
      await _controller.reverse();
    });
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation,
      builder: (context, child) {
        return Transform.translate(
          offset: Offset(0, -120 * (1 - _animation.value)),
          child: child,
        );
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          color: widget.backgroundColor,
          borderRadius: BorderRadius.circular(8),
        ),
        height: 48,
        child: Row(
          children: [
            Icon(
              widget.icon,
              color: widget.textColor,
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Text(
                widget.message,
                style: TextStyle(fontSize: 14, color: widget.textColor),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void showCustomSnackbar(
  BuildContext context,
  String message,
  SnackbarType type, {
  Duration duration = const Duration(seconds: 3),
}) {
  final overlay = Overlay.of(context);
  final overlayEntry = OverlayEntry(
    builder: (context) => Positioned(
      top: 75.0,
      left: 16.0,
      right: 16.0,
      child: Material(
        color: Colors.transparent,
        child: CustomSnackbar.variant(
          message: message,
          type: type,
        ),
      ),
    ),
  );

  overlay.insert(overlayEntry);

  Future.delayed(duration, () {
    overlayEntry.remove();
  });
}
