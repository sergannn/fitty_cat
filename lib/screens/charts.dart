import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class ChartsScreen extends StatelessWidget {
  const ChartsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Splash Screen')),
      body: Center(
        child: Column(
          children: [
            LinearProgressIndicator(),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/board1');
                // Navigate to the second screen when tapped.
              },
              child: LineChart(
                LineChartData(
                  // read about it in the LineChartData section
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
