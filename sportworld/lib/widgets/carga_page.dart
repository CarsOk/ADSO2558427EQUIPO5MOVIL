import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class CargaPage extends StatelessWidget {
  const CargaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: SpinKitChasingDots(
          color: Colors.blue,
          size: 70.0,
        ),);
  }
} 