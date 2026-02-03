import 'package:flutter/material.dart';

class BotonComprobar extends StatelessWidget {
  final VoidCallback onPressed;

  const BotonComprobar({required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: const Text("Comprobar número"),
    );
  }
}