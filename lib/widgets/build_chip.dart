import 'package:flutter/material.dart';

class BuildChip extends StatelessWidget {
  final String label;
  final bool isSelected;
  final Function(bool) onSelected; // Callback for state changes

  const BuildChip({
    super.key,
    required this.label,
    required this.isSelected,
    required this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    return FilterChip(
      label: Text(label),
      selected: isSelected,
      onSelected: onSelected,
      selectedColor: const Color(0xFFC62828),
      checkmarkColor: Colors.white,
      showCheckmark: false, // Optional: Hide checkmark to match Home.png
      labelStyle: TextStyle(
        color: isSelected ? Colors.white : Colors.black87,
        fontSize: 12,
        fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
      ),
      backgroundColor: Colors.white,

      shape: StadiumBorder(
        side: BorderSide(
          color: isSelected ? Colors.transparent : Colors.grey.shade300,
        ),
      ),
    );
  }
}