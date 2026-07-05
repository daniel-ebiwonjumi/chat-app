import 'package:flutter/material.dart';

class DetailAppBar extends StatelessWidget {
  const DetailAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: Text(
              'Back',
              style: TextStyle(
                fontSize: 24,
                color: Colors.white.withValues(alpha: 0.5),
              ),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              'Search',
              style: TextStyle(
                fontSize: 24,
                color: Colors.white.withValues(alpha: 0.5),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
