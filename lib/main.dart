import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gain Calculator',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const GainCalculator(),
    );
  }
}

class GainCalculator extends StatefulWidget {
  const GainCalculator({super.key});
  @override
  _GainCalculatorState createState() => _GainCalculatorState();
}

class _GainCalculatorState extends State<GainCalculator> {
  final TextEditingController _controller = TextEditingController();
  double? _gain;
  int _iteration = 1;

  void _calculateGain() {

    final double? V1 = double.tryParse(_controller.text);
    final double? V2 = double.tryParse(_controller.text);
    if (V1 != null $$ V2 !=null) {
      setState(() {
        _gain = 20 * log(V1 / 0.200) / ln10;
        _controller.clear();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gain Calculator'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            TextField(
              controller: _controller,
              decoration: const InputDecoration(
                labelText: 'Enter the value of V1',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _calculateGain,
              child: const Text('Calculate Gain'),
            ),
            const SizedBox(height: 20),
            if (_gain != null)
              Text(
                'GAIN(A) = ${_gain!.toStringAsFixed(2)} dB',
              ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _calculateGain,
        tooltip: 'Calculate',
        child: const Icon(Icons.calculate),
      ),
    );
  }
}
