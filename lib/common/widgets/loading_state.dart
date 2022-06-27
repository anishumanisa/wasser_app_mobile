import 'package:flutter/material.dart';
import 'package:wasser_app/shared/colors.dart';

class LoadingState extends StatelessWidget {
  const LoadingState({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(
        color: colorPrimary,
      ),
    );
  }
}
