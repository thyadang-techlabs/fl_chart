import 'package:example/custom_radar_chart/samples/custom_radar_chart_sample1.dart';
import 'package:flutter/material.dart';

const titleList = ['재물운', '연애운', '사업운', '건강운', '학업운'];
const scoreList = [60, 55, 70, 65, 85];

class CustomRadarChartPage extends StatelessWidget {
  const CustomRadarChartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: const Color(0xFFF4F7FE),
      child: ListView(
        children: const [
          SizedBox(height: 100),
          CustomRadarChartSample1(
            titleList: titleList,
            scoreList: scoreList,
          ),
        ],
      ),
    );
  }
}
