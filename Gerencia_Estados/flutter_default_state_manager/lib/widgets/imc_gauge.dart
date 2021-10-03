import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

import 'imc_gauge_range.dart';

class ImcGauge extends StatelessWidget {
  final double imc;

  const ImcGauge({Key? key, required this.imc}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SfRadialGauge(
      axes: [
        RadialAxis(
          showLabels: false,
          showAxisLine: false,
          showTicks: false,
          minimum: 12.5,
          maximum: 47.9,
          ranges: [
            ImcGaugeRange(
                color: Colors.blue,
                start: 12.5,
                end: 18.5,
                label: 'Abaixo do peso'),
            ImcGaugeRange(
                color: Colors.green,
                start: 18.5,
                end: 24.5,
                label: 'Peso ideal'),
            ImcGaugeRange(
                color: Colors.yellow[600]!,
                start: 24.5,
                end: 29.9,
                label: 'Acima do peso'),
            ImcGaugeRange(
                color: Colors.red[500]!,
                start: 29.9,
                end: 39.9,
                label: 'Obesidade'),
            ImcGaugeRange(
                color: Colors.red[900]!,
                start: 39.9,
                end: 47.9,
                label: 'Obesidade Severa'),
          ],
          // ignore: prefer_const_literals_to_create_immutables
          pointers: [
            // ignore: prefer_const_constructors
            NeedlePointer(
              value: imc,
              enableAnimation: true,
            ),
          ],
        )
      ],
    );
  }
}
